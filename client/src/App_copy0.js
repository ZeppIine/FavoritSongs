import logo from './logo.svg';
import './App.css';
import List from './List.js';

function App() {
    return (
    <div>
        <Header/>
        <Playlist/>
        <List/>
    </div>
    );
}

function Header() {
    return (
        <h1>React 프로그래밍</h1>
    );
}

function Playlist() {
  return (
      <div className="playlist">
          프로그래밍하면서 듣고 싶은 노래
      </div>
  )
}

function Container() {
    return (
    <div className="container">
        <a href="https://youtu.be/ywwfTCto0rw?t=10" target="_blank">
        <img src="https://i.namu.wiki/i/RMvRDZ2vL5PZ9hwr5SGPTA0huQsw1Af1nVqHFnYjBn2ADwCkNDARc8xX6Tg-cXrHyVqROfbbmlVvqUT1861rNAH07x95iKoF0uRxbg8abf-pcwnjhO8pfquydNcboLsdjm2oLEfgFWt18_beZpGJ6Q.webp" alt="T5H"/>
        <div className="song-title">
            Type 5 Heavy
        </div>
        </a>
    </div>
    )
}

function Container2() {
  return (
    <div class="container">
      <a href="https://www.youtube.com/results?search_query=사건의 지평선">
        <img src="https://i.namu.wiki/i/vo-59FweVaoKY89LFPgY02k1sbFLPdNP4kBoWdP7kwPi5VqTvRI5BMM7lh62YKBDFdjVw3EIRVU3SlsEb2j2_yEyzZ7BWWsGXR_PB_qFi62VXjyuaerH0m5H2t8-CncZt2t2ZLrS06Jc5vOY7IOYlg.webp" alt="PK8"/>
        <div class="song-title">MAUS</div>
      </a>
    </div>
  )
}

function Container3() {
  return (
    <div class="container">
      <a href="https://www.youtube.com/results?search_query=사랑은 늘 도망가">
        <img src="https://i.namu.wiki/i/a0V9m_2R2D8t-jjITI_BhEqVrlKiAKoedhKYI2u5ZE3Hcl-YKy_WF88XRiA-5vMxpdXqM2dRTl8-y4t4AB1HsCK9h8IJXGrc-LhKektDMQUNYsEmGnmkvDnZncqo4HtglD_TO_TPysT_b1djNVh_EQ.webp" alt="PK7"/>
        <div class="song-title">Pz.Kpfw. VII</div>
      </a>
    </div>
  )
}

export default App;
