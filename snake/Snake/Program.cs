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
			
			Point p3 = new Point(10,10, '!');
			p3.Draw();
			
			Point P4 = new Point(14,15,'&');
			P4.Draw();
			
//			List<int> numList = new List<int>();
//			numList.Add ( 0 );
//			numList.Add ( 1 );
//			numList.Add ( 2 );
//			
//			int x = numList [ 0 ];
//			int y = numList [ 1 ];
//			int z = numList [ 2 ];
//			
//			foreach (int i in numList)
//			{
//				Console.WriteLine ( i );
//			}
			List<Point> pList = new List<Point>();
			pList.Add(p1);
			pList.Add(p2);
			pList.Add(p3);
			pList.Add(P4);
			
			List<char> chList = new List<char>();
			chList.Add ('a');
			chList.Add ('b');
			
			foreach ( char c in chList)
			{
				Console.WriteLine (c);
			}
			
			Console.ReadLine();	
		}

	}
}