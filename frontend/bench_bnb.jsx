import React from 'react';
import ReactDOM from 'react-dom';
import { configureStore } from './store/store';
import Root from './components/root';

// FOR TESTING ONLY. DELETE WHEN COMPLETE
import * as SessionAPIUtil from './util/session_api_util';
window.store = configureStore();

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  ReactDOM.render(<Root store={ store } />, document.getElementById('root'));
});
