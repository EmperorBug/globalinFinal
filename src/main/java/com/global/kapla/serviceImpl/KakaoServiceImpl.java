package com.global.kapla.serviceImpl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.UserMapper;
import com.global.kapla.service.KakaoService;
import com.global.kapla.util.KaplaUtils;
import com.global.kapla.vo.KakaoVO;
import com.global.kapla.vo.UserVO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class KakaoServiceImpl implements KakaoService{

	JsonParser jsonParser = new JsonParser();
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public String getToken(String code) throws IOException {
		String host = "https://kauth.kakao.com/oauth/token";
		
		URL url = new URL(host);
		HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
        String token = "";
		try {
			urlConnection.setRequestMethod("POST");
			urlConnection.setDoOutput(true);
			
			BufferedWriter buffer = new BufferedWriter(new OutputStreamWriter(urlConnection.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=23fab0d0b1be050beff23e566d1e8615");
			sb.append("&redirect_url=http://localhost:8282/api/test");
			sb.append("&code="+code);
			
			buffer.write(sb.toString());
			buffer.flush();
			
			int responseCode = urlConnection.getResponseCode();
            System.out.println("responseCode = " + responseCode);
            
            BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
            String line = "";
            String result = "";
            while ((line = br.readLine()) != null) {
                result += line;
            }
            
            JsonObject obj = (JsonObject) jsonParser.parse(result);
            token =  obj.get("access_token").getAsString();
            
            br.close();
            buffer.close();
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return token;
	}

	@Override
	public KakaoVO getInfo(String code) throws IOException {
		String host = "https://kapi.kakao.com/v2/user/me";
		
		URL url = new URL(host);
		HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
        KakaoVO vo = null;
		try {
			urlConnection.setRequestMethod("POST");
			urlConnection.setRequestProperty("Authorization", "Bearer " + code);
			urlConnection.setDoOutput(true);
			int responseCode = urlConnection.getResponseCode();
            
            BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
            String line = "";
            String result = "";
            while ((line = br.readLine()) != null) {
                result += line;
            }
            Gson gson = new Gson();
             vo = gson.fromJson(result, KakaoVO.class);
             //vo에 이메일추가 (카카오api에서 kakao_account안에 이메일 담에서 보내서 한번 꺼내야함
            
            br.close();
            
		}catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	@Override
	public UserVO login(KakaoVO kakaoVO) throws Exception {
		
		
		String id		 	= 	"KAKAOLOGIN_"+kakaoVO.getId();
		String password 	=	Base64.getEncoder().encodeToString((kakaoVO.getId()+ KaplaUtils.ADMIN_CODE).getBytes());
		String email		=	kakaoVO.getKakao_account().get("email").getAsString();
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setEmail(email);
		
		
		int check_user = userMapper.findUser(vo);
		if (check_user == 0) {
			userMapper.insertUser(vo);
		}
		System.out.println(password);
		vo = userMapper.login(vo);
		return vo;
	}

	
	
}
