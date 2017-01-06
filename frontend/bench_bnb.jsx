import React from 'react';
import ReactDOM from 'react-dom';
import { configureStore } from './store/store';

// FOR TESTING ONLY. DELETE WHEN COMPLETE
import * as SessionAPIUtil from './util/session_api_util';
window.store = configureStore();

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, document.getElementById('root'));
});
