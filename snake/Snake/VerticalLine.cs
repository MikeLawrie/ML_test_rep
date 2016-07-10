﻿/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 10.07.2016
 * Time: 16:44
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;


namespace Snake
{
	/// <summary>
	/// Description of VerticalLine.
	/// </summary>
	public class VerticalLine : Figure
	{
		
		public VerticalLine(int yUp, int yDown, int x, char sym)
		{
			pList = new List<Point>();
			
			for(int y =yUp; y <=yDown; y++)
			{
				Point p = new Point(x,y,sym);
				pList.Add( p );
			}
		}
	
	}
}
