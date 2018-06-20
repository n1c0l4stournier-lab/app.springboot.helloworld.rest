package fr.treeptik.app.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {
	
	private static Logger logger = LogManager.getLogger(HelloController.class);

	@GetMapping
	@ResponseBody
	public ResponseEntity<String> hello() {
		String hello = "Hello World!";
		logger.info(hello);
		return ResponseEntity.ok(hello);
	}

}
