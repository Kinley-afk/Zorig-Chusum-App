import Foundation

// MARK: - Craft Model
struct Craft: Identifiable {
    let id = UUID()
    let name: String          // Dzongkha term, e.g. "Thagzo"
    let englishName: String   // English meaning, e.g. "Weaving"
    let imageName: String     // Asset name (SF Symbol used as fallback below)
    let description: String   // Short explanation of the craft
}

// MARK: - The 13 Traditional Arts & Crafts of Bhutan
let allCrafts: [Craft] = [
    Craft(
        name: "Shingzo",
        englishName: "Carpentry",
        imageName: "shingzo",
        description: "The art of woodworking used to build Bhutan's traditional houses, dzongs, and temples, including elaborately carved wooden joints made without nails."
    ),
    Craft(
        name: "Dozo",
        englishName: "Masonry",
        imageName: "dozo",
        description: "The craft of stone and rammed-earth construction, used for building chortens (stupas), walls, and the foundations of dzongs and monasteries."
    ),
    Craft(
        name: "Parzo",
        englishName: "Carving",
        imageName: "parzo",
        description: "The art of carving wood, slate, and stone into intricate patterns, deities, and motifs, commonly seen on altars, furniture, and printing blocks."
    ),
    Craft(
        name: "Lhazo",
        englishName: "Painting",
        imageName: "lhazo",
        description: "Traditional Bhutanese painting of religious images, mandalas, and decorative motifs on walls, textiles, and wooden structures, following strict iconographic rules."
    ),
    Craft(
        name: "Jinzo",
        englishName: "Sculpting",
        imageName: "jinzo",
        description: "The art of sculpting statues and ritual objects from clay, used to create images of Buddhas, deities, and religious figures for temples and monasteries."
    ),
    Craft(
        name: "Lugzo",
        englishName: "Bronze-casting",
        imageName: "lugzo",
        description: "The craft of casting bronze and other metals using the lost-wax method to create statues, bells, ritual instruments, and household items."
    ),
    Craft(
        name: "Garzo",
        englishName: "Blacksmithing",
        imageName: "garzo",
        description: "The traditional art of forging iron into tools, knives, swords, and chains, historically associated with the legendary bridge-builder Thangtong Gyalpo."
    ),
    Craft(
        name: "Troeko",
        englishName: "Ornament-making",
        imageName: "troeko",
        description: "The craft of making gold and silver jewelry and ornaments, including intricate filigree work used in traditional Bhutanese jewelry and religious items."
    ),
    Craft(
        name: "Tsharzo",
        englishName: "Cane and bamboo work",
        imageName: "tsharzo",
        description: "The weaving of cane and bamboo into baskets, mats, hats, containers, and the traditional bow and arrow, widely practiced in eastern Bhutan."
    ),
    Craft(
        name: "Thagzo",
        englishName: "Weaving",
        imageName: "thagzo",
        description: "The art of weaving textiles on traditional looms, producing Bhutan's famously intricate and colorful fabrics used for the national dress and ceremonial cloths."
    ),
    Craft(
        name: "Tshemzo",
        englishName: "Tailoring, embroidery & appliqué",
        imageName: "tshemzo",
        description: "The craft of tailoring garments and creating embroidered and appliqué works, including large thangkas (religious scroll paintings) made entirely of stitched fabric."
    ),
    Craft(
        name: "Shagzo",
        englishName: "Woodturning",
        imageName: "shagzo",
        description: "The art of turning wood on a lathe to create bowls, cups, and containers, notably the lacquered wooden bowls and dapa used across Bhutan."
    ),
    Craft(
        name: "Deh-sho",
        englishName: "Paper-making",
        imageName: "dehsho",
        description: "The traditional craft of making paper (desho) from the bark of the daphne plant, used for religious texts, prayer flags, and stationery."
    )
]
