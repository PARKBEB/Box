import java.awt.Image;
import java.awt.Toolkit;

public class Fish {
	
	Toolkit imageTool = Toolkit.getDefaultToolkit();
	Image fish = imageTool.getImage("res/img/fishMob.png");
	
	public int posX = 0;
    int posY = 0;
    
	int sizeX = 0;
    int sizeY = 0;
    
    int speed = 3;
    
    boolean isRight = false;
    boolean isBreathe = false;
    
    public Fish(int _dir, int _posX, int _posY, int _level)
    {
    	if (_dir == 1)
    	{
    		isRight = true;
    		fish = imageTool.getImage("res/img/fishMobR.png");
    	}
    	
    	posX = _posX;
    	posY = _posY;
    	
    	switch (_level)
    	{
    		case 0 :
    			sizeX = 48;
    	    	sizeY = sizeX;
    			break;
    		case 1 :
    			sizeX = 64;
    	    	sizeY = sizeX;
    			break;
    		case 2 :
    			sizeX = 80;
    	    	sizeY = sizeX;
    			break;
    		case 3 :    		
    			sizeX = 96;
    	    	sizeY = sizeX;
    			break;
    		case 4 :    		
    			sizeX = 112;
    	    	sizeY = sizeX;
    			break;
    	}   	
    	
    }    
    
    public void Left()
    {
    	posX -= speed;
    }
    
    public void Right()
    {
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
    			fish = imageTool.getImage("res/img/fishMob_moveR.png");        			
    		}
    		else
    		{
    			fish = imageTool.getImage("res/img/fishMobR.png");
    		}        		
    	}
    	else
    	{
    		if (isBreathe)
    		{
    			fish = imageTool.getImage("res/img/fishMob_move.png");        			
    		}
    		else
    		{
    			fish = imageTool.getImage("res/img/fishMob.png");
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
    
    public boolean GetDir()
    {
    	return isRight;
    }

}
