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
        <div className= "main-mid-code">
            <div className= "row">
                <div className= "col-md-5">
                </div>
                <div className= "col-md-5">
                </div>
            </div>
        </div>
        <div className= "btn-code">
            <button className= "btn-code-name" id= "back">이전</button>
            <button className= "btn-code-name" id= "delete">초기화</button>
            <button className= "btn-code-name" id= "next">다음 문제</button>
            <button className= "btn-code-next" id= "send">제출 후 채점하기</button>
        </div>
    </div>
  );
}

export default Tboard; 
