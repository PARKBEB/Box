package com.reactbackend.info;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject; // JSON객체 생성
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class InfoController {

	@ResponseBody
	@GetMapping("/users/get")
	public JSONArray userGet() throws IOException, ParseException {

		Reader reader = new FileReader("C:/test/sample.json");

		JSONArray jArray = (JSONArray) new JSONParser().parse(reader);

		return jArray;
	}

	@PostMapping("/users/post")
	public JSONArray userPost(String id, String name, String team) throws IOException, ParseException {

		File f = new File("C:/test/sample.json");

		Reader reader = new FileReader("C:/test/sample.json");

		JSONArray jArray = (JSONArray) new JSONParser().parse(reader);

		if (f.exists()) {
			System.out.println("있음");

			JSONObject inner = new JSONObject();
			inner.put("id", id);
			inner.put("name", name);
			inner.put("team", team);

			jArray.add(inner);

			FileWriter file = new FileWriter("C:/test/sample.json");

			file.write(jArray.toJSONString());
			file.flush();
			file.close();

			System.out.print(jArray);

		} else {

			System.out.println("없음");

			try {

				JSONObject inner = new JSONObject();
				inner.put("id", id);
				inner.put("name", name);
				inner.put("team", team);

				jArray.add(inner);

				FileWriter file = new FileWriter("C:/test/sample.json");

				file.write(jArray.toJSONString());
				file.flush();
				file.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return jArray;

	}

	@DeleteMapping("/users/delete")
	public JSONArray userDelete(String id) throws IOException, ParseException {

		Reader reader = new FileReader("C:/test/sample.json");

		JSONArray jArray = (JSONArray) new JSONParser().parse(reader);

		for (int i = 0; i < jArray.size(); i++) {
			JSONObject obj = (JSONObject) jArray.get(i);
			if (id.equals(obj.get("id"))) {
				jArray.remove(i);
			}
		}
		FileWriter file = new FileWriter("C:/test/sample.json");

		file.write(jArray.toJSONString());
		file.flush();
		file.close();

		return jArray;
	}
	
	@PutMapping("/users/put")
	public JSONArray userPut(String id, String name, String team) throws IOException, ParseException {
		
		Reader reader = new FileReader("C:/test/sample.json");

		JSONArray jArray = (JSONArray) new JSONParser().parse(reader);

		for (int i = 0; i < jArray.size(); i++) {
			JSONObject obj = (JSONObject) jArray.get(i);
			if (id.equals(obj.get("id"))) {
				obj.put("name", name);
				obj.put("team", team);
			}
		}
		
		FileWriter file = new FileWriter("C:/test/sample.json");

		file.write(jArray.toJSONString());
		file.flush();
		file.close();

		return jArray;

	}

}