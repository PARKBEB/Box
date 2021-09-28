import React, { useState } from 'react';
import './Main.css'; 
import { Link } from 'react-router-dom';

function Main() {
  const [sidebar, setSidebar] = useState(false);
  console.log(sidebar);
  const showSidebar = () => setSidebar(!sidebar);
  return (
  <div className="main-wrap">
    <div className="main-top">
        <div className= "menu-bars" onClick= {showSidebar}></div>       
        <span>SANHA INFORMATION TECHNOLOGY</span>
    </div>
    <nav className= {sidebar ? 'nav-menu active' : 'nav-menu'}>
      <div className= "menu-bars-close" onClick= {showSidebar}></div>
      <ul>
        <li>강의관리</li>
        <Link to= "/Tboard"><li>시험관리</li></Link>
        <li>과제관리</li>
        <li>평가관리</li>
      </ul>
    </nav>
    <div className="main-mid">


    </div>
  </div>
   
  );
}

export default Main; 
