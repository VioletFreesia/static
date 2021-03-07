const PicGo = require('picgo')

// 构造PicGo对象
function getPicGo(config) {
    let picgo = new PicGo()
    picgo.setConfig(config)
    return picgo
}

const vp = {
    getPicGo
}

window.vp = vp