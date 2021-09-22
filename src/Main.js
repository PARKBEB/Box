import React, { useState } from 'react';
import './Main.css'; 
import { Link } from 'react-router-dom';

function nav_open()
{
  document.getElementById("main-nav").style.display = 'flex';
}

function nav_close()
{
  document.getElementById("main-nav").style.display = 'none';
}

function Main() {
  return (
    <div class="main-wrap">
    <div id="main-nav">
        <div class="main-nav-left">
            <a href="javascript:nav_close();" class="main-nav-close">                     
            </a>
            <p><Link>강의관리</Link></p>
            <p><Link to= "/Tboard">시험관리</Link></p>
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

    <div class="main-mid">
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
