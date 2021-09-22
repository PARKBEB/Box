import React, { useState } from 'react';
import './Tboard.css'; 
import { Link } from 'react-router-dom';

function Tboard() {
  return (
<div class="main-wrap">
    <div id="main-nav">
        <div class="main-nav-left">
            <a href="javascript:nav_close();" class="main-nav-close">                     
            </a>
            <p><Link>강의관리</Link></p>
            <p><Link>시험관리</Link></p>
            <p><Link>과제관리</Link></p>
            <p><Link>평가관리</Link></p>
        </div>

        <a href="javascript:nav_close();" class="main-nav-right">

        </a>
    </div>

    <div class="main-top">
        <a href="javascript:nav_open();"></a>
        <span>SANHA INFORMATION TECHNOLOGY</span>
    </div>

    <div class="table-mid">
        <table>
            <thead>
                <tr>
                    <th>시험관리</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>홍길동</td>
                </tr>
                <tr>
                    <td>홍길동</td>
                </tr>
                <tr>
                    <td>홍길동</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
   
  );
}

export default Tboard; 
