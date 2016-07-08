/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 07.07.2016
 * Time: 17:37
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace Snake
{
	class Program
	{
		public static void Main(string[] args)
		{
			
			// TODO: Implement Functionality Here
			Point p1 = new Point(1,3,'*');
			p1.Draw();
			
			Point p2 = new Point(4,5,'#');
			p2.Draw();
			
			
			Console.ReadLine();	
		}

	}
}