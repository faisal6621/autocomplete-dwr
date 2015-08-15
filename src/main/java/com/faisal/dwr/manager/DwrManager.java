package com.faisal.dwr.manager;

import java.util.ArrayList;
import java.util.List;

public class DwrManager
{
	public List<String> getWords( String input )
	{
		List<String> words = new ArrayList<String>();
		words.add( "khawar" );
		words.add( "nawab" );
		words.add( "dawn" );
		words.add( input );
		return words;
	}
}
