import React, { useState } from 'react';
import './Tboard.css'; 
import { Link } from 'react-router-dom';

function Tboard() {
    const [sidebar, setSidebar] = useState(false);
    const showSidebar = () => setSidebar(!sidebar);

    const today= () =>{
        const now= new Date();
        const year= now.getFullYear();
        const month= now.getMonth() +1;
        const day= now.getDate();
        const hours = now.getHours();
        const minutes = now.getMinutes();

    return year + '-' + month + '-' + day + ' ' + hours + ':' + minutes;
    }

  return (
    <div class="main-wrap">
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
    </div>
  );
}

export default Tboard; 
