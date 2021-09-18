import React, { useState } from 'react';
import './Main.css';
import * as FaIcons from 'react-icons/fa';
import * as AiIcons from 'react-icons/ai';
import { IconContext } from 'react-icons'; 
import { Link } from 'react-router-dom';
import { SidebarData } from './SidebarData';
import mImg from "./img/mImg.png"

function Main() {
  const [sidebar, setSidebar] = useState(false);   
  const showSidebar = () => setSidebar(!sidebar);
  return (
    <IconContext.Provider value={{ color: '#fff'}}>
      <div className="main">
        <Link to= "#" className= "menu-bars">
          <FaIcons.FaBars onClick= {showSidebar} />
        </Link>
          <h1>Sanha Information Technology</h1>
      </div>
      <nav className= { sidebar ? 'nav-menu active' : 'nav-menu'} >
        <ul className= "nav-menu-items" onClick= {showSidebar}>
          <li className= "navbar-toggle">
            <Link to= "#" className= "menu-bars">
              <AiIcons.AiOutlineClose />
            </Link>
          </li>   
          {/* SidebarData를 순서대로 담기*/}           
          {SidebarData.map((item, index) => {   
            return(
              <li key= {index} className= {item.cName}>
                <Link to= {item.path}>
                  {item.icon}
                  <span>{item.title}</span>
                </Link>
                </li>
            );
          })}
        </ul>
      </nav>
      {/* MainBoard */}
      <div className= "mBoard">
        <img src= {mImg} alt="backImg" />
        <p>산하정보기술 교육프로그램<br/><br/>
          시험 및 과제에대한 결과를 확인하세요</p>
      </div>
    </IconContext.Provider>
  );
}

export default Main; 
