//
//  DriversDetails.swift
//  Starting
//
//  Created by Murat Işık on 20.08.2023.
//

import Foundation

struct DriversModel: Identifiable {
    let id = UUID()
    
    let driverImage: String
    let driverName: String
    let driverTeamName: String
    let driverAge: String
    let driverNumber: String
    let driverChampCount: String?
    let driverCountryFlagImage: String
    let driverPoint: String
    let driverHighlights: String
    
    
}




struct DriversList {
    
    
    
    
    
    
    
    static var allDrivers = [
        
        DriversModel( driverImage: "https://media.formula1.com/content/dam/fom-website/drivers/2023Drivers/verstappen.jpg.img.1024.medium.jpg/1677069646195.jpg", driverName: "Max VERSTAPPEN", driverTeamName: "RedBull Racing", driverAge: "26", driverNumber: "1" , driverChampCount:"2", driverCountryFlagImage: "https://www.hollandavesen.nl/binaries/large/content/gallery/netherlandsandyou/content-afbeeldingen/algemeen/vlag-nederland.png", driverPoint: "314", driverHighlights: "https://www.youtube.com/watch?v=yRfrq9W1lhs&pp=ygUZbWF4IHZlcnN0YXBwZW4gaGlnaGxpZ2h0cw%3D%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/S/SERPER01_Sergio_Perez/serper01.png.transform/2col-retina/image.png", driverName: "Sergio PEREZ", driverTeamName: "RedBull Racing", driverAge: "33", driverNumber: "11", driverChampCount: nil, driverCountryFlagImage: "https://www.gokbayraktekstil.com.tr/upload/cache/upload/ckfinder/files/urunler/devlet-ulke-bayraklari/meksika-330x229.jpg", driverPoint: "189", driverHighlights: "https://www.youtube.com/watch?v=6j3XiOLcsTM&pp=ygUYc2VyZ8SxbyBwZXJleiBoaWdobGlnaHRz"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/L/LEWHAM01_Lewis_Hamilton/lewham01.png.transform/2col-retina/image.png", driverName: "Lewis HAMILTON", driverTeamName: "Mercedes AMG", driverAge: "38", driverNumber: "44", driverChampCount: "7", driverCountryFlagImage: "https://www.marineden.com/wp-content/uploads/2022/04/Ing-Bayragi.jpg", driverPoint: "148", driverHighlights: "https://www.youtube.com/watch?v=cseyOse4GNo&pp=ygUabGV3aXMgaGFtxLFsdG9uIGhpZ2hsaWdodHM%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/G/GEORUS01_George_Russell/georus01.png.transform/2col-retina/image.png", driverName: "George RUSSELL", driverTeamName: "Mercedes AMG", driverAge: "25", driverNumber: "63", driverChampCount: nil, driverCountryFlagImage: "https://www.marineden.com/wp-content/uploads/2022/04/Ing-Bayragi.jpg", driverPoint: "99", driverHighlights: "https://www.youtube.com/watch?v=sochaOVVWGc&pp=ygUbZ2VvcmdlIHJ1c3NlbGwgYmVzdCBtb21lbnRz"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/F/FERALO01_Fernando_Alonso/feralo01.png.transform/2col-retina/image.png", driverName: "Fernando ALONSO", driverTeamName: "Aston Martin", driverAge: "42", driverNumber: "14", driverChampCount: "2", driverCountryFlagImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Spain.svg/250px-Flag_of_Spain.svg.png", driverPoint: "149", driverHighlights: "https://www.youtube.com/watch?v=0-MygHluZRM&pp=ygUdZmVybmFuZG8gYWxhb25zbyBiZXN0IG1vbWVudHM%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/L/LANSTR01_Lance_Stroll/lanstr01.png.transform/2col-retina/image.png", driverName: "Lance STROLL", driverTeamName: "Aston Martin", driverAge: "25", driverNumber: "18", driverChampCount: nil, driverCountryFlagImage: "https://ulkelerbayraklar.com/wp-content/uploads/2018/06/Canada-Flag-Transparent1.png", driverPoint: "47", driverHighlights: "https://www.youtube.com/watch?v=Ke8eR4d9dkU&pp=ygUabGFuY2Ugc3Ryb2xsIGJlc3QgbW9tZW50cyA%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/C/CHALEC01_Charles_Leclerc/chalec01.png.transform/2col-retina/image.png", driverName: "Charles LECLERC", driverTeamName: "Scuderia Ferrari", driverAge: "26", driverNumber: "16", driverChampCount: nil, driverCountryFlagImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Flag_of_Monaco.svg/1200px-Flag_of_Monaco.svg.png", driverPoint: "99", driverHighlights: "https://www.youtube.com/watch?v=BWddke3GJKQ&pp=ygUdY2hhcmxlcyBsZWNsZXJjIGJlc3QgbW9tZW50cyA%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/C/CARSAI01_Carlos_Sainz/carsai01.png.transform/2col-retina/image.png", driverName: "Carlos SAINZ", driverTeamName: "Scuderia Ferrari", driverAge: "29", driverNumber: "55", driverChampCount: nil, driverCountryFlagImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Spain.svg/250px-Flag_of_Spain.svg.png", driverPoint: "92", driverHighlights: "https://www.youtube.com/watch?v=1E_O4lvao9Q&pp=ygUcY2FybG9zIHNhxLFueiAgYmVzdCBtb21lbnRzIA%3D%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/L/LANNOR01_Lando_Norris/lannor01.png.transform/2col-retina/image.png", driverName: "Lando NORRIS", driverTeamName: "McLaren", driverAge: "24", driverNumber: "4", driverChampCount: nil, driverCountryFlagImage: "https://www.marineden.com/wp-content/uploads/2022/04/Ing-Bayragi.jpg", driverPoint: "69", driverHighlights: "https://www.youtube.com/watch?v=pjUc0DnWjL4&pp=ygUcbGFuZG8gbm9ycsSxcyAgYmVzdCBtb21lbnRzIA%3D%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/O/OSCPIA01_Oscar_Piastri/oscpia01.png.transform/2col-retina/image.png", driverName: "Oscar PIASTRI", driverTeamName: "McLaren", driverAge: "22", driverNumber: "81", driverChampCount: nil, driverCountryFlagImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Australia.svg/2560px-Flag_of_Australia.svg.png", driverPoint: "34", driverHighlights: "https://www.youtube.com/watch?v=n8bjj06mUDc&t=77s&pp=ygUab3NjYXIgcGlhc3RyaSBiZXN0IG1vbWVudHM%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/E/ESTOCO01_Esteban_Ocon/estoco01.png.transform/2col-retina/image.png", driverName: "Esteban OCON", driverTeamName: "Alpine", driverAge: "27", driverNumber: "31", driverChampCount: nil, driverCountryFlagImage: "https://cdn1.xmlbankasi.com/p1/alizebodrum/image/data/resimler/fransa-bayragi-16553.jpg", driverPoint: "35", driverHighlights: "https://www.youtube.com/watch?v=nUUi_jI-6xA&pp=ygUfZXN0ZWJhbiBvY29uIGJlc3QgbW9tZW50cyAgMjAyMg%3D%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/P/PIEGAS01_Pierre_Gasly/piegas01.png.transform/2col-retina/image.png", driverName: "Pierre GASLY", driverTeamName: "Alpine", driverAge: "27", driverNumber: "10", driverChampCount: nil, driverCountryFlagImage: "https://cdn1.xmlbankasi.com/p1/alizebodrum/image/data/resimler/fransa-bayragi-16553.jpg", driverPoint: "22", driverHighlights: "https://www.youtube.com/watch?v=6EUGqmlKk4Q&pp=ygUfcGllcnJlIGdhc2x5IGJlc3QgbW9tZW50cyAgMjAyMg%3D%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/A/ALEALB01_Alexander_Albon/alealb01.png.transform/2col-retina/image.png", driverName: "Alex ALBON", driverTeamName: "Williams", driverAge: "27", driverNumber: "23", driverChampCount: nil, driverCountryFlagImage: "https://www.marineden.com/wp-content/uploads/2022/04/Ing-Bayragi.jpg", driverPoint: "11", driverHighlights: "https://www.youtube.com/watch?v=WL6j03DZsvg&pp=ygUdYWxleCBhbGJvbiBiZXN0IG1vbWVudHMgIDIwMjI%3D"),
        
        DriversModel(
            driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/L/LOGSAR01_Logan_Sargeant/logsar01.png.transform/2col-retina/image.png", driverName: "Logan SARGEANT", driverTeamName: "Williams", driverAge: "23", driverNumber: "2", driverChampCount: nil, driverCountryFlagImage: "https://w3t8w3k2.stackpathcdn.com/wp-content/uploads/2018/06/abd-bayragi.jpg", driverPoint: "0", driverHighlights: "https://www.youtube.com/watch?v=viHvKKaRo3w&pp=ygUebG9nYW4gc2FyZ2VudCBoaWdobGlnaHRzICAyMDIy"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/N/NICHUL01_Nico_Hulkenberg/nichul01.png.transform/2col-retina/image.png", driverName: "Nico HULKENBERG", driverTeamName: "Hass", driverAge: "36", driverNumber: "27", driverChampCount: nil, driverCountryFlagImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/langtr-640px-Flag_of_Germany.svg.png", driverPoint: "9", driverHighlights: "https://www.youtube.com/watch?v=OKVGK2gOTyY&pp=ygUbbmljbyBodWxrZWJlcmcgaGlnaGxpZ2h0cyAg"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/K/KEVMAG01_Kevin_Magnussen/kevmag01.png.transform/2col-retina/image.png", driverName: "Kevin MAGNUSSEN", driverTeamName: "Hass", driverAge: "31", driverNumber: "20", driverChampCount: nil, driverCountryFlagImage: "https://m.media-amazon.com/images/I/31vMnouDtJL._UF1000,1000_QL80_.jpg", driverPoint: "2", driverHighlights: "https://www.youtube.com/watch?v=zSalNv8GbC8&pp=ygUda2V2xLFuIG1hZ251c3NlbiBoaWdobGlnaHRzICA%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/V/VALBOT01_Valtteri_Bottas/valbot01.png.transform/2col-retina/image.png", driverName: "Valtteri BOTTAS", driverTeamName: "Alfa Romeo", driverAge: "34", driverNumber: "77", driverChampCount: nil, driverCountryFlagImage: "https://www.gokbayraktekstil.com.tr/upload/cache/upload/ckfinder/files/urunler/devlet-ulke-bayraklari/finda-330x229.jpg", driverPoint: "5", driverHighlights: "https://www.youtube.com/watch?v=iW7V3Bw8-ws&pp=ygUudmFsdHRlcmkgYm90dGFzICBiZXN0IG1vbWVudHMgd2l0aCBhbGZhIHJvbWVvIA%3D%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/G/GUAZHO01_Guanyu_Zhou/guazho01.png.transform/2col-retina/image.png", driverName: "Zhou GUANYU", driverTeamName: "Alfa Romeo", driverAge: "24", driverNumber: "24", driverChampCount: nil, driverCountryFlagImage: "https://www.gokbayraktekstil.com.tr/upload/cache/upload/ckfinder/files/urunler/devlet-ulke-bayraklari/cin-330x229.jpg", driverPoint: "4", driverHighlights: "https://www.youtube.com/watch?v=Jck7vjtDT5k&pp=ygUcemhvdSBndWFueXUgIGJlc3QgbW9tZW50cyBmMQ%3D%3D"),
        
        DriversModel(driverImage: "https://cdn-6.motorsport.com/images/mgl/6l9g48x0/s8/yuki-tsunoda-alphatauri-1.jpg", driverName: "Yuki Tsunoda", driverTeamName: "AlphaTauri", driverAge: "23", driverNumber: "22", driverChampCount: nil, driverCountryFlagImage: "https://img.kitapyurdu.com/v1/getImage/fn:258248/wi:400/wh:true", driverPoint: "3", driverHighlights: "https://www.youtube.com/watch?v=TMvoR181m4I&pp=ygUcWXVraSBUc3Vub2RhIGJlc3QgbW9tZW50cyBmMQ%3D%3D"),
        
        DriversModel(driverImage: "https://media.formula1.com/d_driver_fallback_image.png/content/dam/fom-website/drivers/N/NYCDEV01_Nyck_De%20Vries/nycdev01.png.transform/2col-retina/image.png", driverName: "Nyck De Vries", driverTeamName: "AlphaTauri", driverAge: "28", driverNumber: "21", driverChampCount: nil, driverCountryFlagImage: "https://iis-akakce.akamaized.net/p.z?%2F%2Fimg%2Epttavm%2Ecom%2Fpimages%2F592%2F086%2F238%2F5e2af359be2e7%2Ejpg%3Fv%3D201910111528", driverPoint: "0", driverHighlights: "https://www.youtube.com/watch?v=rOp1GvjM4yU&pp=ygUdTnljayBEZSBWcmllcyBiZXN0IG1vbWVudHMgZjE%3D"),
        
        
    ]
}
