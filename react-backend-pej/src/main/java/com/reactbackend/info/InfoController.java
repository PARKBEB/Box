package com.reactbackend.info;

import java.io.File;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject; // JSON객체 생성
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class InfoController { 

    ArrayList<Map<String, String>> list = new ArrayList<Map<String, String>>(); 

    @ResponseBody
    @GetMapping("/users/get")
    public ArrayList<Map<String, String>> userGet(){        

        System.out.println(list);

        return list;
    }   

    @PostMapping("/users/post")
    public ArrayList<Map<String, String>> userPost(String id, String name, String team) throws IOException, ParseException {

        File f = new File("C:/test/sample.json");

        JSONParser parser = new JSONParser();

        if (f.exists()) {            
            System.out.println("있음");

            Reader reader = new FileReader("C:/test/sample.json");

            JSONArray jArray = (JSONArray)new JSONParser().parse(reader);

            JSONObject inner = new JSONObject();
            inner.put("id", id);
            inner.put("name", name);
            inner.put("team", team);

            jArray.add(inner);

            FileWriter file = new FileWriter("C:/test/sample.json"); 

            file.write(jArray.toJSONString());
            file.flush();
            file.close();
            
        } else {

            System.out.println("없음");

            try {                 
                JSONArray jArray = new JSONArray();

                JSONObject inner = new JSONObject();
                inner.put("id", id);
                inner.put("name", name);
                inner.put("team", team);

                jArray.add(inner);

                FileWriter file = new FileWriter("C:/test/sample.json"); 

                file.write(jArray.toJSONString());
                file.flush();
                file.close();
            }
            catch (IOException e) {
                e.printStackTrace(); 
            }
        }

        System.out.print("아이디=" +id + "이름=" +name + "팀=" +team);

        return list;

    }

}