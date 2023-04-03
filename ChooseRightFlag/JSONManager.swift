//
//  JSONManager.swift
//  ChooseRightFlag
//
//  Created by Дмитрий Корчагин on 04.04.2023.
//

import Foundation

// MARK: - Country
// "http://www.geognos.com/api/en/countries/info/all.json"

struct Country: Codable {
    let statusMsg: String
    let results: [String: Result]
    let statusCode: Int

    enum CodingKeys: String, CodingKey {
        case statusMsg = "StatusMsg"
        case results = "Results"
        case statusCode = "StatusCode"
    }

    static let allCountries: Country = Bundle.main.decode(file: "Data.json")
    static let data = [("ru", "Russia"), ("va", "Holy See"), ("pt", "Portugal"), ("hn", "Honduras"), ("tf", "French Southern Territories"), ("as", "American Samoa"), ("fj", "Fiji"), ("bl", "Saint Barthelemy"), ("qa", "Qatar"), ("lu", "Luxembourg"), ("ml", "Mali"), ("bg", "Bulgaria"), ("ma", "Morocco"), ("mn", "Mongolia"), ("au", "Australia"), ("kn", "Saint Kitts and Nevis"), ("sy", "Syria"), ("mv", "Maldives"), ("vu", "Vanuatu"), ("bv", "Bouvet Island"), ("mh", "Marshall Islands"), ("mu", "Mauritius"), ("fi", "Finland"), ("ba", "Bosnia and Herzegovina"), ("gm", "Gambia"), ("br", "Brazil"), ("bf", "Burkina Faso"), ("bb", "Barbados"), ("de", "Germany"), ("ae", "United Arab Emirates"), ("fr", "France"), ("gb", "United Kingdom"), ("io", "British Indian Ocean Territory"), ("ng", "Nigeria"), ("gn", "Guinea"), ("ht", "Haiti"), ("ca", "Canada"), ("gg", "Guernsey"), ("ky", "Cayman Islands"), ("jp", "Japan"), ("in", "India"), ("na", "Namibia"), ("lb", "Lebanon"), ("cm", "Cameroon"), ("es", "Spain"), ("fo", "Faroe Islands"), ("mk", "Macedonia"), ("so", "Somalia"), ("pe", "Peru"), ("dm", "Dominica"), ("ci", "Ivory Coast"), ("wf", "Wallis and Futuna"), ("nc", "New Caledonia"), ("us", "United States"), ("km", "Comoros"), ("kg", "Kyrgyzstan"), ("mf", "Saint Martin"), ("th", "Thailand"), ("gl", "Greenland"), ("gr", "Greece"), ("gq", "Equatorial Guinea"), ("cl", "Chile"), ("si", "Slovenia"), ("vg", "British Virgin Islands"), ("ve", "Venezuela"), ("mc", "Monaco"), ("lr", "Liberia"), ("ai", "Anguilla"), ("sz", "Swaziland"), ("lk", "Sri Lanka"), ("gi", "Gibraltar"), ("bh", "Bahrain"), ("nu", "Niue"), ("hm", "Heard Island and McDonald Islands"), ("om", "Oman"), ("is", "Iceland"), ("bn", "Brunei"), ("tm", "Turkmenistan"), ("ms", "Montserrat"), ("kh", "Cambodia"), ("ni", "Nicaragua"), ("bt", "Bhutan"), ("ir", "Iran"), ("nr", "Nauru"), ("zm", "Zambia"), ("dz", "Algeria"), ("sn", "Senegal"), ("dj", "Djibouti"), ("ad", "Andorra"), ("nl", "Netherlands"), ("dk", "Denmark"), ("vc", "Saint Vincent and the Grenadines"), ("co", "Colombia"), ("nz", "New Zealand"), ("mw", "Malawi"), ("ch", "Switzerland"), ("gy", "Guyana"), ("ne", "Niger"), ("sv", "El Salvador"), ("md", "Moldova"), ("tl", "Timor-Leste"), ("mo", "Macao"), ("tv", "Tuvalu"), ("jo", "Jordan"), ("ug", "Uganda"), ("cu", "Cuba"), ("rw", "Rwanda"), ("lc", "Saint Lucia"), ("pa", "Panama"), ("tg", "Togo"), ("tk", "Tokelau"), ("sb", "Solomon Islands"), ("ga", "Gabon"), ("nf", "Norfolk Island"), ("mx", "Mexico"), ("sd", "Sudan"), ("pm", "Saint Pierre and Miquelon"), ("il", "Israel"), ("ee", "Estonia"), ("je", "Jersey"), ("yt", "Mayotte"), ("vn", "Vietnam"), ("cz", "Czech Republic"), ("cv", "Cape Verde"), ("se", "Sweden"), ("ck", "Cook Islands"), ("kw", "Kuwait"), ("za", "South Africa"), ("rs", "Serbia"), ("eu", "European Union"), ("do", "Dominican Republic"), ("bo", "Bolivia"), ("bd", "Bangladesh"), ("ph", "Philippines"), ("ki", "Kiribati"), ("mg", "Madagascar"), ("sa", "Saudi Arabia"), ("eg", "Egypt"), ("eh", "Western Sahara"), ("mp", "Northern Mariana Islands"), ("ge", "Georgia"), ("hr", "Croatia"), ("mz", "Mozambique"), ("iq", "Iraq"), ("az", "Azerbaijan"), ("mm", "Myanmar"), ("hk", "Hong Kong"), ("pf", "French Polynesia"), ("gd", "Grenada"), ("pw", "Palau"), ("uy", "Uruguay"), ("ec", "Ecuador"), ("mr", "Mauritania"), ("lt", "Lithuania"), ("bm", "Bermuda"), ("af", "Afghanistan"), ("tt", "Trinidad and Tobago"), ("jm", "Jamaica"), ("to", "Tonga"), ("ke", "Kenya"), ("vi", "Virgin Islands"), ("cd", "Congo Democratic Republic"), ("ap", "Asia & Pacific"), ("mt", "Malta"), ("gh", "Ghana"), ("al", "Albania"), ("gu", "Guam"), ("ua", "Ukraine"), ("ye", "Yemen"), ("by", "Belarus"), ("ws", "Samoa"), ("cr", "Costa Rica"), ("an", "Netherlands Antilles"), ("pk", "Pakistan"), ("gt", "Guatemala"), ("tw", "Taiwan"), ("sh", "Saint Helena Ascension and Tristan da Cunha"), ("pn", "Pitcairn"), ("cc", "Cocos Islands"), ("td", "Chad"), ("ly", "Libya"), ("sj", "Svalbard"), ("fm", "Micronesia"), ("bs", "Bahamas"), ("cn", "China"), ("cf", "Central African Republic"), ("ar", "Argentina"), ("sr", "Suriname"), ("pl", "Poland"), ("kr", "Korea South"), ("sm", "San Marino"), ("ie", "Ireland"), ("kz", "Kazakhstan"), ("st", "Sao Tome and Principe"), ("er", "Eritrea"), ("ls", "Lesotho"), ("sg", "Singapore"), ("my", "Malaysia"), ("np", "Nepal"), ("tc", "Turks and Caicos Islands"), ("hu", "Hungary"), ("pg", "Papua New Guinea"), ("bw", "Botswana"), ("id", "Indonesia"), ("aq", "Antarctica"), ("sc", "Seychelles"), ("zw", "Zimbabwe"), ("cx", "Christmas Island"), ("im", "Isle of Man"), ("cg", "Congo Republic"), ("bj", "Benin"), ("gw", "Guinea-Bissau"), ("li", "Liechtenstein"), ("bi", "Burundi"), ("tz", "Tanzania"), ("me", "Montenegro"), ("am", "Armenia"), ("ro", "Romania"), ("py", "Paraguay"), ("at", "Austria"), ("la", "Laos"), ("aw", "Aruba"), ("kp", "Korea North"), ("be", "Belgium"), ("sl", "Sierra Leone"), ("tn", "Tunisia"), ("uz", "Uzbekistan"), ("pr", "Puerto Rico"), ("it", "Italy"), ("cy", "Cyprus"), ("lv", "Latvia"), ("fk", "Falkland Islands"), ("et", "Ethiopia"), ("ag", "Antigua and Barbuda"), ("tr", "Turkey"), ("no", "Norway"), ("sk", "Slovakia"), ("bz", "Belize"), ("tj", "Tajikistan"), ("ao", "Angola"), ("ps", "Palestinian Territory")]
    
}

// MARK: - Result
struct Result: Codable, Hashable {
    let name: String
    let capital: Capital?
    let geoRectangle: GeoRectangle
    let seqID: Int
    let geoPt: [Double]
    let telPref: String?
    let countryCodes: CountryCodes
    let countryInfo: String

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case capital = "Capital"
        case geoRectangle = "GeoRectangle"
        case seqID = "SeqID"
        case geoPt = "GeoPt"
        case telPref = "TelPref"
        case countryCodes = "CountryCodes"
        case countryInfo = "CountryInfo"
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    static func == (lhs: Result, rhs: Result) -> Bool {
        return lhs.name == rhs.name
    }
}

// MARK: - Capital
struct Capital: Codable {
    let dlst: DLSTUnion
    let td: Double
    let flg: Int
    let name: String
    let geoPt: [Double]

    enum CodingKeys: String, CodingKey {
        case dlst = "DLST"
        case td = "TD"
        case flg = "Flg"
        case name = "Name"
        case geoPt = "GeoPt"
    }
}

enum DLSTUnion: Codable {
    case enumeration(DLSTEnum)
    case integer(Int)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(DLSTEnum.self) {
            self = .enumeration(x)
            return
        }
        throw DecodingError.typeMismatch(DLSTUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for DLSTUnion"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .enumeration(let x):
            try container.encode(x)
        case .integer(let x):
            try container.encode(x)
        }
    }
}

enum DLSTEnum: String, Codable {
    case null = "null"
}

// MARK: - CountryCodes
struct CountryCodes: Codable {
    let tld, iso3, iso2, fips: String
    let isoN: Int
}

// MARK: - GeoRectangle
struct GeoRectangle: Codable {
    let west, east, north, south: Double

    enum CodingKeys: String, CodingKey {
        case west = "West"
        case east = "East"
        case north = "North"
        case south = "South"
    }
}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        let decoder = JSONDecoder()
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the project.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) in the project.")
        }
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) in the project.")
        }
        return loadedData
    }
}
