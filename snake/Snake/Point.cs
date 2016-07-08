/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 08.07.2016
 * Time: 11:28
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace Snake
{
	/// <summary>
	/// Description of Point.
	/// </summary>
	public class Point
	{
		
		public int x;
		public int y;
		public char sym;
	
				public void Draw()
				
		{
			Console.SetCursorPosition(x,y);
			Console.Write(sym);	
			
		}
		
		public Point()
		{
		
		}
	
		
	}
}
