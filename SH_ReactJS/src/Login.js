import './Login.css';
import React from "react";

function Login({history}) {
    function onClickLogin(){
      history.push("/Main")
    }
  return (
    <div className="login-wrap">
            <div className="login-box">
                <div>
                    <h2>산하정보기술 로그인</h2>
                </div>
                <div>
                    <input type="text" className="login-input-text" placeholder="User Email" />
                </div>
                <div>
                    <input type="password" className="login-input-text" placeholder="User Password" />
                </div>
                <div>
                    <div className="login-checkbox-wrap">
                        Remember me <input type="checkbox" className="login-checkbox" />
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
