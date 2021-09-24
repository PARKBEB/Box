import React, { useState } from 'react';
import axios from 'axios';
import './App.css';

function App() {

    const [id, setId] = useState([]);
    const [name, setName] = useState([]);
    const [team, setTeam] = useState([]);

    function get() {
        
        const url = "/users";
        axios.get(url)
        .then(function(response) {
            setName(response.data);
            console.log("성공");
        })
        .catch(function(error) {
            console.log("실패");
        })   
    }
        return (
        <div className="App">
            <header className="App-header">
                    ID: {id} NAME: {name} TEAM: {team} 
                <h1 className="App-title">
                    <input type= "text" className= "login-input-text"  placeholder= "id"></input>
                    <input type= "text" className= "login-input-text"  placeholder= "name"></input>
                    <input type= "text" className= "login-input-text"  placeholder= "team"></input>
                </h1>
                    <button onClick= {get}> GET </button>
                    <button onClick= {get}> POST </button>
                    <button onClick= {get}> PUT </button>
                    <button onClick= {get}> DELETE </button>
            </header>
        </div>
        )
}
export default App;