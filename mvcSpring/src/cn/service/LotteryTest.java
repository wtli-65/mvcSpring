package cn.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import org.junit.Test;

public class LotteryTest {
	private static int limitNum = 10;
	private List<Integer> numList= new ArrayList<Integer>();
	private int temp = 0;
	@Test
	public void getRandomNum(){
		Random random = new Random();
		for(int i=1;i<1001;i++){
			temp = random.nextInt(limitNum);
			while(isMatch(numList,temp)){
				temp = random.nextInt(limitNum);
			}
			numList.add(temp);
			if(i%5==0){
				System.out.println(Arrays.toString(numList.toArray()));
				numList.clear();
			}
		}
	}
	/**
	 * 判断list中是否有匹配数字
	 * @param list
	 * @param temp
	 * @return
	 */
	public boolean isMatch(List<Integer> list, int temp){
		if(list.contains(temp)) return true;
		return false;
	}
}
