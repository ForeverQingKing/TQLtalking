package org.app.demo.spring.controller;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

import javax.servlet.http.HttpServletRequest;

import org.app.demo.spring.chat.ChatServer;
import org.app.demo.spring.service.HelloWorldService;
import org.java_websocket.WebSocketImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/helloworld.do")
public class HelloWorldController{

	@Autowired
	private HelloWorldService helloWorldService;

	@RequestMapping
	public String getNewName(@RequestParam("userName") String userName, HttpServletRequest request){
		WebSocketImpl.DEBUG = false;
		int port = 8887; //端口
		try {
			if(!isPortUsing("127.0.0.1",port)){
				ChatServer s = new ChatServer(port);
				s.start();
			}
			
			String newUserName = helloWorldService.getNewName(userName);
			request.setAttribute("newUserName", newUserName);
			
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "helloworld";
	}
	
	@SuppressWarnings({ "unused", "resource" })
	public static boolean isPortUsing(String host,int port) throws UnknownHostException{  
        boolean flag = false;  
        InetAddress theAddress = InetAddress.getByName(host);  
        try {  
            Socket socket = new Socket(theAddress,port);  
            flag = true;  
        } catch (IOException e) {  
              
        }  
        return flag;  
    }  

}

