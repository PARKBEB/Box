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
    <div className= "main-mid-widget">
      <div className= "row">
        <table class="table">
          <thead>
            <h2>강의관리</h2>
            <tr>
              <th scope="col">이름</th>
              <th scope="col">분기</th>
              <th scope="col">제출상태</th>
              <th scope="col">제출일시</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>@mdo</td>
            </tr>
            <tr>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
              <td>@fat</td>
            </tr>
            <tr>
              <td>Larry</td>
              <td>the Bird</td>
              <td>@twitter</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </table>
        <table class="table">
          <thead>
            <h2>시험관리</h2>
            <tr>
              <th scope="col">이름</th>
              <th scope="col">분기</th>
              <th scope="col">제출상태</th>
              <th scope="col">제출일시</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>@mdo</td>
            </tr>
            <tr>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
              <td>@fat</td>
            </tr>
            <tr>
              <td>Larry</td>
              <td>the Bird</td>
              <td>@twitter</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </table>
        <table class="table">
          <thead>
            <h2>과제관리</h2>
            <tr>
              <th scope="col">이름</th>
              <th scope="col">분기</th>
              <th scope="col">제출상태</th>
              <th scope="col">제출일시</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>@mdo</td>
            </tr>
            <tr>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
              <td>@fat</td>
            </tr>
            <tr>
              <td>Larry</td>
              <td>the Bird</td>
              <td>@twitter</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </table>
        <table class="table">
          <thead>
            <h2>평가관리</h2>
            <tr>
              <th scope="col">이름</th>
              <th scope="col">분기</th>
              <th scope="col">제출상태</th>
              <th scope="col">제출일시</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>@mdo</td>
            </tr>
            <tr>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
              <td>@fat</td>
            </tr>
            <tr>
              <td>Larry</td>
              <td>the Bird</td>
              <td>@twitter</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  );
}
export default Main; 
