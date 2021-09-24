import React, { useState } from 'react';
import './Tboard.css'; 
import { Link } from 'react-router-dom';

function Tboard() {
    const [sidebar, setSidebar] = useState(false);
    const showSidebar = () => setSidebar(!sidebar);
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
    <div class="table-mid">
    <h2>시험 관리</h2>
        <table>
            <thead>
                <tr>
                    <th>이름</th>
                    <th>분기</th>
                    <th>제출상황</th>
                    <th>일자</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>홍길동</td>
                    <td>1분기</td>
                    <td>제출완료</td>
                    <td>2021-09-23</td>
                </tr>
                <tr>
                    <td>홍길동</td>
                    <td>1분기</td>
                    <td>-</td>
                    <td>2021-09-23</td>
                </tr>
                <tr>
                    <td>홍길동</td>
                    <td>1분기</td>
                    <td>제출완료</td>
                    <td>2021-09-23</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
   
  );
}

export default Tboard; 
