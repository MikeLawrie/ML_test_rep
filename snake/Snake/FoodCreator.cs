/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 11.07.2016
 * Time: 15:39
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace Snake
{
	/// <summary>
	/// Description of FoodCreator.
	/// </summary>
	public class FoodCreator
	{
		int mapWidht;
		int mapHeight;
		char sym;
		
		Random random = new Random( );
		
				public FoodCreator(int mapWidth, int mapHeight, char sym)
		{
			this.mapWidht = mapWidth;
			this.mapHeight = mapHeight;
			this.sym = sym;
      }

		public Point CreateFood()
		{
			int x = random.Next( 2, mapWidht - 2 );
			int y = random.Next( 2, mapHeight - 2 );
			return new Point( x, y, sym );
		}
	}
}
