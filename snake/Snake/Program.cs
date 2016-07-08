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
			int x1=1;
			int y1=3;
			char sym1= '*';
			int x2=4;
			int y2=5;
			char sym2= '#';
			
			
			Draw(x1,y1,sym1);
			Draw(x2,y2,sym2);	
			
			
			Console.ReadLine();	
		}
		static void Draw(int x, int y, char sym)
		{
		
			Console.SetCursorPosition(x,y);
			Console.Write(sym);	
			
		}
	}
}