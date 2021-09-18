import './Login.css';
import React from "react";
import {Link} from 'react-router-dom';

function Login({history}) {
    function onClickLogin(){
      history.push("/Main")
    }
  return (
    <div className="Login">
        <h1>
          산하정보기술 로그인
        </h1>
          <span>
            Email address <br/>
            <input type= "text" placeholder= "Enter email" />
          </span>
          <span>
            Password <br/>
            <input type= "password" placeholder= "Enter password" />
          </span>
          <span>
            <input type= "checkbox" /> Remember me
          </span>
          <Link to= "/Main">
            <p>해당 링크를 클릭하세요</p>
          </Link>
          <div>
              <button type= 'button' onClick= {onClickLogin}>Login</button>
          </div>
    </div>
  );
}

export default Login; 
