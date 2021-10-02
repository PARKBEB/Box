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

      <div className="banners">
        <div className="banner">강의 관리</div>
        <div className="banner">시험 관리</div>
        <div className="banner">과제 관리</div>
        <div className="banner">평가 관리</div>
      </div>

      <div className="mid-content">
        <div className="mid-content-title"><a>강의 관리 →</a></div>
        <table>
          <tr>
            <th>이름</th>
            <th>분기</th>
            <th>제출</th>
            <th>날짜</th>
          </tr>
          <tr>
            <td>a</td>
            <td>a</td>
            <td>a</td>
            <td>a</td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>

        <div className="mid-content-arrows">
          <span>◀</span>
          <div>Page 1 of 1</div>
          <span>▶</span>
        </div>
      </div>

    </div>
  </div>
  );
}
export default Main; 
