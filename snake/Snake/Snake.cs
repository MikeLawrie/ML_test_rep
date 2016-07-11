/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 10.07.2016
 * Time: 17:41
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;

namespace Snake
{
	/// <summary>
	/// Description of Snake.
	/// </summary>
	public class Snake : Figure
	{
		
		public Snake(Point tail, int length, Direction direction)
		{
			pList = new List<Point>();
			for(int i =0; i < length; i++)
			{
				Point p= new Point(tail);
				p.Move(i,direction);
				pList.Add(p);
			}
		}
	}
}
