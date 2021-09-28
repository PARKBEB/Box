import React, { useState } from 'react';
import './Tmanagement.css'; 
import { Link } from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.css';

function Tboard() {
    const [sidebar, setSidebar] = useState(false);
    const showSidebar = () => setSidebar(!sidebar);

  return (
    <div className="main-wrap-tboard">
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
        
        <div className= "main-mid">
           <div></div>
        </div>
           <button>이전</button>
           <button>초기화</button>
           <button>제출 후 채점하기</button>
           <button>다음 문제</button>
    </div>
  );
}

export default Tboard; 
