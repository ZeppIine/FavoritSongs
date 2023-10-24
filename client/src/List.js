import React from 'react'

const List = () => {
    const songs = ["IDOL", "축복", "사건의 지평선"]
    return (
        <ul>
            { songs.map((song, index) => <li key = { index }>{ song }</li>) }
        </ul>
    )
}

export default List