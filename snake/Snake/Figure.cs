/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 10.07.2016
 * Time: 16:57
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;

namespace Snake
{
	/// <summary>
	/// Description of Figure.
	/// </summary>
	public class Figure
	{
				protected List<Point> pList;
				
		public Figure()
		{
		}
				public void Draw()
		{
			foreach(Point p in pList)
			{
				p.Draw();
			}
	}
	}
}
