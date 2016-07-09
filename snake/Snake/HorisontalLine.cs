/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 09.07.2016
 * Time: 17:02
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;

namespace Snake
{
	/// <summary>
	/// Description of HorisontalLine.
	/// </summary>
	public class HorisontalLine
	{
		List<Point> pList;
		
		public HorisontalLine(int xLeft, int xRight, int y, char sym)
		{
			pList = new List<Point>();
			
			for(int x =xLeft; x <=xRight; x++)
			{
				Point p = new Point(x,y,sym);
				pList.Add( p );
			}
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
