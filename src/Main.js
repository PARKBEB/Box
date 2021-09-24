import React, { useState } from 'react';
import './Main.css'; 
import { Link } from 'react-router-dom';

function Main() {
  const [sidebar, setSidebar] = useState(false);
  const showSidebar = () => setSidebar(!sidebar);
  return (
  <div className="main-wrap">
    <div className="main-top">
        <div className= "menu-bars" onClick= {showSidebar}></div>       
        <span>SANHA INFORMATION TECHNOLOGY</span>
    </div>
    <ul className= {sidebar ? 'nav-menu active' : 'nav-menu'}>
      <div className= "menu-bars-close" onClick= {showSidebar}></div>
    </ul>
    <div className="main-mid">
        <p>
            산하정보기술 교육프로그램
        </p>
        <p>
            시험 및 과제에 대한 결과를 확인하세요.        
        </p>
    </div>
  </div>
   
  );
}

export default Main; 
