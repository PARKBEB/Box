import java.awt.Image;
import java.awt.Toolkit;

public class Player {
	
	Toolkit imageTool = Toolkit.getDefaultToolkit();
	Image fish = imageTool.getImage("res/img/fishPink.png");
	
	public int posX = 0;
    int posY = 0;
    
	public int sizeX = 0;
	public int sizeY = 0;
    
    int speed = 5;
    
    boolean isRight = false;
    boolean isBreathe = false;
    
    public Player(int width, int height)
    {
    	posX = width / 2;
    	posY = height / 2;
    	
    	sizeX = 64;
    	sizeY = sizeX;
    }
    
    public void Up()
    {
    	posY -= speed;
    }
    
    public void Down()
    {
    	posY += speed;
    }
    
    public void Left()
    {
    	isRight = false;
    	fish = imageTool.getImage("res/img/fishPink.png");
    	posX -= speed;
    }
    
    public void Right()
    {
    	isRight = true;
    	fish = imageTool.getImage("res/img/fishPinkR.png");
    	posX += speed;
    }
    
    public Image GetFish(int _breatheTime)
    {
    	if (_breatheTime < 500)
    	{
    		isBreathe = false;
    	}
    	else
    	{
    		isBreathe = true;
    	}
		
    	if (isRight)
    	{
    		if (isBreathe)
    		{
    			fish = imageTool.getImage("res/img/fishPink_moveR.png");        			
    		}
    		else
    		{
    			fish = imageTool.getImage("res/img/fishPinkR.png");
    		}        		
    	}
    	else
    	{
    		if (isBreathe)
    		{
    			fish = imageTool.getImage("res/img/fishPink_move.png");        			
    		}
    		else
    		{
    			fish = imageTool.getImage("res/img/fishPink.png");
    		}        		
    	}
    	
    	return fish;
    }
    
    public int GetPosX()
    {
    	return posX;
    }
    
    public int GetPosY()
    {
    	return posY;
    }
    
    public int GetSizeX()
    {
    	return sizeX;
    }
    
    public int GetSizeY()
    {
    	return sizeY;
    }   
    
}
