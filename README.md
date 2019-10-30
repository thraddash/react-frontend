# react-frontend
npx create-react-app react-frontend
cd react-frontend
npm start

vi src/App.js
```
import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  state = { users: [] }                         /*initialize state to empty array user */

  componentDidMount() {
    fetch('/users')                             /*correspond to users from the express server */
       .then(res => res.json())                 /*take response and parse into json*/
       .then(users => this.setState({ users })); /*take users and set it to state*/
  }
                                                /*map this.state.users and for each user, render li key=user.id>user.username */
  render() {
    return (
      <div className="App">
        <h1>Users</h1>
        <ul>
          {this.state.users.map(user =>
            <li key={user.id}>{user.username}</li>
          )}
        </ul>
      </div>
    );
  }
}
```
vi package.json

add proxy
```
{
  "name": "react-frontend",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "react": "^16.11.0",
    "react-dom": "^16.11.0",
    "react-scripts": "0.9.5"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test --env=jsdom",
    "eject": "react-scripts eject"
  },
  "proxy": "http://localhost:3001"
}
```

