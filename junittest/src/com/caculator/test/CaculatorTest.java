package com.caculator.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.java.junit.Calcuator;

class CaculatorTest {

	@Test
	void testSum() {
		Calcuator calc = new Calcuator();
		assertEquals(80, 
				calc.sum(40, 30));
	}

}
