import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.swing.JFrame;

public class GameView extends JFrame {

    Toolkit imageTool = Toolkit.getDefaultToolkit();
    Image background = imageTool.getImage("res/img/background.png");
    Image buffImg;
    Graphics buffG;

    int width = 640;
    int height = 640;
    
    Player player;
    
    int level = 1; // 1 ~ 5 // Mob 0 ~ 4
    int exp = 0;
    int expMax = 5;
    
    boolean up, down, left, right;
    
    int breatheTime = 0;
    
    List<Fish> list;
    
    public GameView() {
        // 프레임의 대한 설정. // JFrame을 상속받아서 사용가능
        setTitle("물고기 키우기"); // 프레임 제목 설정.
        setSize(width, height); // 프레임의 크기 설정.
        setResizable(false); // 프레임의 크기 변경 못하게 설정.
        setVisible(true); // 프레임 보이기(프레임을 뜨게하는 메소드);
        setDefaultCloseOperation(EXIT_ON_CLOSE); // 프레임의 x버튼 누르면 종료;
        
        player = new Player(width, height);
        
        list = new ArrayList<Fish>();
        
        addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
            	if (e.getKeyCode() == KeyEvent.VK_UP)
                {
                	up = true;
                }
                else if (e.getKeyCode() == KeyEvent.VK_DOWN)
                {
                	down = true;
                }
                else if (e.getKeyCode() == KeyEvent.VK_LEFT)
                {
                	left = true;
                }
                else if (e.getKeyCode() == KeyEvent.VK_RIGHT)
                {
                	right = true;
                }            	
            }
            
            @Override
			public void keyReleased(KeyEvent e) {
            	if (e.getKeyCode() == KeyEvent.VK_UP)
                {
                	up = false;
                }
                else if (e.getKeyCode() == KeyEvent.VK_DOWN)
                {
                	down = false;
                }
                else if (e.getKeyCode() == KeyEvent.VK_LEFT)
                {
                	left = false;
                }
                else if (e.getKeyCode() == KeyEvent.VK_RIGHT)
                {
                	right = false;
                }
            }
        });
    }

    @Override // 상속 받은 JFrame 안에 메소드 paint를 재선언(새로 다시 쓰겠다)
    public void paint(Graphics g) {
    	buffImg = createImage(getWidth(), getHeight());
        buffG = buffImg.getGraphics();
        try {
        	update(g);
            Thread.sleep(10);
            breatheTime += 100;
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
    
    @Override
    public void update(Graphics g) {
    	PlayerState();
    	
        buffG.clearRect(0, 0, 640, 640);
        buffG.drawImage(background, 0, 0, this);
        
        if (breatheTime > 1000)
        {
        	breatheTime = 0;
        	
        	Random ran = new Random();
        	int bornRan = ran.nextInt(3); // 0 ~ 2
        	int locYRan = ran.nextInt(500) + 64; // 64 ~ 564
        	int fishLV = ran.nextInt(5);
        	
        	if (bornRan == 0 || bornRan == 1)
        	{
        		int fishX = bornRan == 1 ? -128 : width;
        		list.add(new Fish(bornRan, fishX, locYRan, fishLV));
        	}
        }
        
        DrawFish();
        DeleteFish();
        
        buffG.drawImage(player.GetFish(breatheTime), player.GetPosX(), player.GetPosY(), player.GetSizeX(), player.GetSizeY(), this);
        
        Collide(); // 충돌
       
        g.drawImage(buffImg,0,0,this);
        
        repaint();
    }
    
    void DrawFish()
    {
    	for (Fish fish : list)
        {
    		if (fish.GetDir())
    		{
    			fish.Right();
    		}
    		else
    		{
    			fish.Left();
    		}
        	buffG.drawImage(fish.GetFish(breatheTime), fish.GetPosX(), fish.GetPosY(), fish.GetSizeX(), fish.GetSizeY(), this);
        }
    }
    
    void DeleteFish()
    {
    	for (int i = 0; i < list.size(); i++)
        {
        	if (list.get(i).GetDir()) // Right
        	{
        		if (list.get(i).GetPosX() < -128)
        		{
        			list.remove(list.get(i));
        		}
        	}
        	else
        	{
        		if (list.get(i).GetPosX() > width)
        		{
        			list.remove(list.get(i));
        		}
        	}
        }
    }
    
    void Collide()
    {
    	for (Fish fish : list)
        {
    		boolean isCollide = false;
    		if (fish.GetPosX() < player.GetPosX() && fish.GetPosX() + fish.GetSizeX() > player.GetPosX() && fish.GetPosY() < player.GetPosY() && fish.GetPosY() + fish.GetSizeY() > player.GetPosY())
    		{
    			isCollide = true;
    		}
    		else if (fish.GetPosX() < player.GetPosX() + player.GetSizeX() && fish.GetPosX() + fish.GetSizeX() > player.GetPosX() + player.GetSizeX() && fish.GetPosY() < player.GetPosY() && fish.GetPosY() + fish.GetSizeY() > player.GetPosY())
    		{
    			isCollide = true;
    		}
    		else if (fish.GetPosX() < player.GetPosX() && fish.GetPosX() + fish.GetSizeX() > player.GetPosX() && fish.GetPosY() < player.GetPosY() + player.GetSizeY() && fish.GetPosY() + fish.GetSizeY() > player.GetPosY() + player.GetSizeY())
    		{
    			isCollide = true;
    		}
    		else if (fish.GetPosX() < player.GetPosX() + player.GetSizeX() && fish.GetPosX() + fish.GetSizeX() > player.GetPosX() + player.GetSizeX() && fish.GetPosY() < player.GetPosY() + player.GetSizeY() && fish.GetPosY() + fish.GetSizeY() > player.GetPosY() + player.GetSizeY())
    		{
    			isCollide = true;
    		}
    		
    		if (isCollide)
    		{
    			if (fish.GetSizeX() >= player.GetSizeX())
    			{
    				player.posX = 99999;
    			}
    			else
    			{
    				switch (player.GetSizeX())
    				{
    					case 64 :
    						player.sizeX = 80;
    						player.sizeY = 80;
    						fish.posX = 99999;
    						break;
    					case 80 :
    						
    						break;
    					case 96 :
    						
    						break;
    					case 112 :
    						
    						break;
    				}
    				
    			}
    			
    		}
    		
        }
    }
    
    void PlayerState()
    {
    	if (up)
    	{  
    		player.Up();
    	}
    	if (down)
    	{
    		player.Down();
    	}
    	if (left)
    	{
    		player.Left();
    	}
    	if (right)
    	{
    		player.Right();
    	}
    }
    
}