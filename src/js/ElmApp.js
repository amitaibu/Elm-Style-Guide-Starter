import { Elm } from '../elm/Main.elm';

const appDiv = document.querySelector('#app') || document.body;
const elmNode = document.createElement('div');
appDiv.appendChild(elmNode);

const app = Elm.Main.init({
    node: elmNode,
    flags: {
        hostname: window.location.href,
    }
});

export { app };
