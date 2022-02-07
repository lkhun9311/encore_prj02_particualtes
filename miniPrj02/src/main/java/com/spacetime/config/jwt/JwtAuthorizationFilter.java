package com.spacetime.config.jwt;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.spacetime.config.auth.PrincipalDetails;
import com.spacetime.model.User;
import com.spacetime.repository.UserRepository;

public class JwtAuthorizationFilter extends BasicAuthenticationFilter {

	private UserRepository userRepository;

	public JwtAuthorizationFilter(AuthenticationManager authenticationManager, UserRepository userRepository) {
		super(authenticationManager);
		this.userRepository = userRepository;

	}

	// 인증이나 권한이 필요한 주소요청이 있을 때 해당 필터를 타게됨.
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
//		super.doFilterInternal(request, response, chain);
		System.out.println("인증이나 권한이 필요한 주소 요청이 됨.");

		Cookie[] cs = request.getCookies();
		
		
		if (cs != null) {
			System.out.println("if 진입.");
			for (int i = 0; i < cs.length; i++) {

				
				Cookie c = cs[i];
				System.out.println(cs.length);
				String cname = c.getName();
				System.out.println(cname);
				String cvalue = c.getValue();
				System.out.println(cvalue);
				if (cname.equals("Authorization")) {
					System.out.println("if 진입2.");
					String replace = cvalue.replace("Bearer+", "");
					System.out.println(replace);
					String authorization = JWT.require(Algorithm.HMAC512("cos")).build().verify(replace).getClaim("username")
							.asString();	
					
					User userEntity = userRepository.findByUsername(authorization);
					PrincipalDetails principalDetails = new PrincipalDetails(userEntity);
					if (authorization != null) {
						System.out.println("username 정상");

						System.out.println("userEntity" + userEntity.getUsername());
						System.out.println("principalDetails: " + principalDetails.getUsername() + "하하하");

						// Jwt 토큰 서명을 통해서 서명이 정상이면 Authentication 객체를 만들어준다.
						Authentication authentication = new UsernamePasswordAuthenticationToken(principalDetails, null,
								principalDetails.getAuthorities());

						// 강제로 시큐리티의 세션에 접근하여 Authentication 객체를 저장
						SecurityContextHolder.getContext().setAuthentication(authentication);
					} 
					
					String reToken = principalDetails.getRefreshToken();
					String split = reToken.replace("Bearer+", "");
					System.out.println(split);

					long rToken = JWT.require(Algorithm.HMAC512("cos")).build().verify(split).getClaim("exp")
							.asLong();
//		               
					System.out.println(rToken);

					long j = new Date().getTime() / (long) 1000;
					System.out.println(j);

					if (rToken > i) {

						String accessToken = JWT.create()
								.withSubject(Long.toHexString(principalDetails.getId() + new Date().getTime()))
								.withExpiresAt(new Date(System.currentTimeMillis() + 10 * 60 * 1000))
								.withIssuer(request.getRequestURI().toString()).withClaim("id", principalDetails.getId())
								.withClaim("username", principalDetails.getUsername()).sign(Algorithm.HMAC512("cos"));
						
						@SuppressWarnings("deprecation")
						Cookie cookie = new Cookie("Authorization", URLEncoder.encode("Bearer+" + accessToken));

						// expires in 7 days
						cookie.setMaxAge(7 * 24 * 60 * 60);

						// optional propertie
						cookie.setSecure(true);
						cookie.setHttpOnly(true);
						cookie.setPath("/");

						
						// add cookie to response

						System.out.println("이거 되나 안되나???");
						response.addCookie(cookie);
						chain.doFilter(request, response);
						return;
						
					}
					
					

//					if (cname != null && cvalue.startsWith("Bearer+")) {
//						chain.doFilter(request, response);
//						return;
//					}
				}else {
						chain.doFilter(request, response);
					
				}
			}
		}

//		String jwtHeader = request.getHeader("Authorization");
//		System.out.println("jwtHeader: " + jwtHeader);

		// header가 있는지 확인.
//		if (jwtHeader == null || !jwtHeader.startsWith("Bearer")) {
//			chain.doFilter(request, response);
//			return;
//		}
		// JWT 토큰을 검증을 해서 정상적인 사용자인지 확인
	}
}
