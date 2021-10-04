import React, { useState } from 'react';
import './Tboard.css'; 
import { Link } from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.css';

function Tboard() {
    const [sidebar, setSidebar] = useState(false);
    const showSidebar = () => setSidebar(!sidebar);
  return (
    <div className="main-wrap-tboard">
        <div className="main-top">
            <div className= "menu-bars" onClick= {showSidebar}></div>       
            <Link to= "/Main"><span>SANHA INFORMATION TECHNOLOGY</span></Link>
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
        <div className= "main-mid-Tboard">
            <div className="container">
                <div className="row">
                    <div className="col-md">
                        <p>1분기 시험과제</p>
                    </div>
                    <div className="col-md">
                        <p>1분기 시험과제</p>
                    </div>
                    <div className="col-md">
                        <p>1분기 시험과제</p>
                    </div>
                </div>
                <div className="row">
                    <div className="col-sm">
                        <Link to= "/Tmanagement">
                            <h2>[풀스택]</h2>
                            <p>프로트엔드 + 백엔드</p>
                        </Link>
                    </div>
                    <div className="col-sm">
                        <Link to= "/Tmanagement">
                            <h2>[백엔드]</h2>
                            <p>Java, C, SpringBoot</p>
                        </Link>
                    </div>
                    <div className="col-sm">
                        <Link to= "/Tmanagement">
                            <h2>[프론트엔드]</h2>
                            <p>VueJS, ReactJS, Html</p>
                        </Link>
                    </div>
                </div>
                <div className="row">
                    <div className="col-md">
                        <p>1분기 시험과제</p>
                    </div>
                    <div className="col-md">
                        <p>1분기 시험과제</p>
                    </div>
                    <div className="col-md">
                        <p>1분기 시험과제</p>
                    </div>
                </div>
                <div className="row">
                <div className="col-sm">
                        <Link to= "/Tmanagement">
                            <h2>[풀스택]</h2>
                            <p>프로트엔드 + 백엔드</p>
                        </Link>
                    </div>
                    <div className="col-sm">
                        <Link to= "/Tmanagement">
                            <h2>[백엔드]</h2>
                            <p>Java, C, SpringBoot</p>
                        </Link>
                    </div>
                    <div className="col-sm">
                        <Link to= "/Tmanagement">
                            <h2>[프론트엔드]</h2>
                            <p>VueJS, ReactJS, Html</p>
                        </Link>
                    </div>
                </div>
            </div>
        </div>
    </div>
  );
}

export default Tboard; 
