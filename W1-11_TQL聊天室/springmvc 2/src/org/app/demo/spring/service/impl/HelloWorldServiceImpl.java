package org.app.demo.spring.service.impl;  
  
import org.app.demo.spring.service.HelloWorldService;  
  
import org.springframework.stereotype.Service;  
  
import org.springframework.transaction.annotation.Transactional;  
  
@Service  
  
public class HelloWorldServiceImpl implements HelloWorldService {  
  
       @Transactional  
  
       public String getNewName(String userName) {  
  
              return userName;  
       }
  
}  