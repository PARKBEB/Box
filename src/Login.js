import './Login.css';
import React from "react";
import {Link} from 'react-router-dom';

function Login({history}) {
    function onClickLogin(){
      history.push("/Main")
    }
  return (
    <div class="login-wrap">
            <div class="login-box">
                <div>
                    <h2>산하정보기술 로그인</h2>
                </div>
                <div>
                    <input type="text" class="login-input-text" placeholder="User Email" />
                </div>
                <div>
                    <input type="password" class="login-input-text" placeholder="User Password" />
                </div>
                <div>
                    <div class="login-checkbox-wrap">
                        Remember me <input type="checkbox" class="login-checkbox" />
                    </div>
                    
                </div>
                <div>
                    <button type= 'button' className= "login-btn" onClick= {onClickLogin}>Login</button>
                </div>

            </div>
    </div>
  );
}

export default Login; 
