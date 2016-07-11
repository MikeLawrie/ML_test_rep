/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 07.07.2016
 * Time: 17:37
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace Snake
{
	class Program
	{
		public static void Main(string[] args)
		{
						Console.SetBufferSize (80, 25);
						HorisontalLine upLine = new HorisontalLine (0,78,0,'+');
						upLine.Draw();
						HorisontalLine downLine = new HorisontalLine (0,78,24,'+');
						downLine.Draw();
						VerticalLine leftLine = new VerticalLine (0,24,0,'+');
						leftLine.Draw();
						VerticalLine rightLine = new VerticalLine (0,24,78,'+');
						rightLine.Draw();
						
			// TODO: Implement Functionality Here
			Point p = new Point(4,5,'*');
//			p1.Draw();

//
//		HorisontalLine line = new HorisontalLine(5,10,8,'+');
//			line.Draw();
//			
//			VerticalLine line2 = new VerticalLine(1,55,8,'@');
//			line2.Draw();
//			
			
			Snake snake = new Snake(p,4,Direction.RIGHT);
			snake.Draw();
			
//			while(true)
//			{
//				if(Console.KeyAvailable)
//				{
//					ConsoleKeyInfo key = Console.ReadKey();
//					if (key.Key == ConsoleKey.LeftArrow)
//					{snake.direction = Direction.LEFT;}
//					else if (key.Key == ConsoleKey.RightArrow)
//						snake.direction = Direction.RIGHT;
//					else if (key.Key == ConsoleKey.UpArrow)
//						snake.direction = Direction.UP;
//					else if (key.Key == ConsoleKey.DownArrow)
//						snake.direction = Direction.DOWN;
//				}
//				Thread.Sleep (100);
//				snake.Draw();
//			}
			
		}

	}
}