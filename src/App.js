import React, {useState, useEffect} from 'react';
import './App.css';

function App () {
    const [message, setMessage] = useState("");
    
    useEffect(() => {
        fetch('/api/hello')
            .then(response => response.text())
            .then(message => {
                setMessage(message);
        });
    },[])
    return (
        <div className="App">
            <header className="App-header">
                <h1 className="App-title">
                    {message}
                </h1>
                    <button>PUT</button>
                    <button>GET</button>
                    <button>DELET</button>
                    <button>POST</button>
            </header>
        </div>
    )
}
export default App;
