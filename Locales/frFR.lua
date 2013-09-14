local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs", "frFR")
if not L then return end
-- Core.lua
L["%s has been defeated"] = "%s a été vaincu(e)"

L.bosskill = "Défaite du boss"
L.bosskill_desc = "Prévient quand le boss est vaincu."
L.berserk = "Berserk"
L.berserk_desc = "Prévient quand le boss devient fou furieux."
L.stages = "Phases"
L.stages_desc = "Active les fonctions relatives aux différentes phases/étapes du boss telles que la proximité, les barres, etc."

L.already_registered = "|cffff0000ATTENTION :|r |cff00ff00%s|r (|cffffff00%s|r) existe déjà en tant que module dans Big Wigs, mais quelque chose essaye de l'enregistrer à nouveau. Cela signifie souvent que vous avez deux copies de ce module dans votre répertoire AddOns suite à une mauvaise mise à jour d'un gestionnaire d'addons. Il est recommandé de supprimer tous les répertoires de Big Wigs et de le réinstaller complètement."

L.movieBlocked = "Vous avez déjà vu cette cinématique, elle ne sera pas affichée."
L.roleUpdate = "Rôle mis à jour."

-- Loader / Options.lua
L["You are running an official release of Big Wigs %s (revision %d)"] = "Vous utilisez une version FINALISÉE de Big Wigs %s (r%d)."
L["You are running an ALPHA RELEASE of Big Wigs %s (revision %d)"] = "Vous utilisez une version ALPHA de Big Wigs %s (r%d)."
L["You are running a source checkout of Big Wigs %s directly from the repository."] = "Vous utilisez une version du dépôt de Big Wigs %s."
L["There is a new release of Big Wigs available (/bwv). You can visit curse.com, wowinterface.com, wowace.com or use the Curse Updater to get the new release."] = "Une nouvelle version de Big Wigs est disponible (/bwv). Vous pouvez visiter curse.com, wowinterface.com, wowace.com ou utiliser le Curse Updater pour obtenir cette nouvelle version."
L["Your alpha version of Big Wigs is out of date (/bwv)."] = "Votre version alpha de Big Wigs est périmée (/bwv)."
L.extremelyOutdated = "\124cffff0000ATTENTION :\124r votre Big Wigs est périmé de plus de 200 révisions !! Votre version peut contenir des bogues, des fonctionnalités manquantes ou encore avoir des délais totalement faux. Il est FORTEMENT recommandé de mettre à jour."

L.tooltipHint = "|cffeda55fClic gauche|r pour redémarrer les modules actifs. |cffeda55fAlt-Clic gauche|r pour les désactiver. |cffeda55fClic droit|r pour accéder aux options."
L["Active boss modules:"] = "Modules de boss actifs :"
L["All running modules have been reset."] = "Tous les modules actifs ont été réinitialisés."
L["All running modules have been disabled."] = "Tous les modules actifs ont été désactivés."

L["There are people in your group with older versions or without Big Wigs. You can get more details with /bwv."] = "Certains joueurs de votre groupe ont d'anciennes versions ou n'ont pas Big Wigs. Tapez /bwv pour plus de détails."
L["Up to date:"] = "À jour :"
L["Out of date:"] = "Périmé :"
L["DBM users:"] = "Utilisateurs de DBM :"
L["No boss mod:"] = "Pas de boss mod :"

L["Waiting until combat ends to finish loading due to Blizzard combat restrictions."] = "En attente de la fin du combat afin de terminer le chargement en raison de restrictions mises en place par Blizzard."
L["Combat has ended, Big Wigs has now finished loading."] = "Le combat a pris fin, Big Wigs a maintenant terminé de se charger."
L["Due to Blizzard restrictions the config must first be opened out of combat, before it can be accessed in combat."] = "En raison de restrictions mises en place par Blizzard, la configuration doit être chargée une première fois hors combat avant de pouvoir être accessible en combat."

L.missingAddOn = "Notez que cette zone nécessite le plugin [\124cFF436EEE%s\124r] pour que les délais puissent s'afficher."

L.coreAddonDisabled = "Big Wigs ne fonctionnera pas correctement car l'addon %s est désactivé. Vous pouvez l'activer via le panneau de contrôle des addons à l'écran de sélection du personnage."

L.removeAddon = "Veuillez enlever '|cFF436EEE%s|r' étant donné qu'il a été remplacé par '|cFF436EEE%s|r'."

-- Options.lua
L["Customize ..."] = "Personnaliser..."
L["Profiles"] = "Profils"
--L.introduction = "Bienvenue sur Big Wigs, where the boss encounters roam. Attachez vos ceintures, gavez vous de cacahuètes et passez un agréable moment. Il ne fera pas de mal à vos enfants mais vous aidera à préparer cette nouvelle rencontre de boss as a 7-course dinner pour votre groupe de raid."
L["Configure ..."] = "Configurer..."
L.configureDesc = "Ferme la fenêtre des options de l'interface et vous permet de configurer l'affichage des barres et des messages.\n\nSi vous voulez personnaliser plus en profondeur le reste de Big Wigs, étendez l'arbre de configuration sur la gauche et cliquez sur \"Personnaliser...\"."
L["Sound"] = "Son"
L.soundDesc = "Les messages sont le plus souvent accompagnés de sons. Certaines personnes trouvent plus faciles d'entendre ces sons pour réagir une fois qu'elles ont appris quels sons sont liés à quels messages, plutôt que de lire les messages à chaque fois.\n\n|cffff4411Même si ceci est décoché, le son par défaut de l'Avertissement raid risque de continuer à être lu à cause des messages provenant des autres joueurs. Ce son est cependant différent de ceux que nous utilisons.|r"
L["Show Blizzard warnings"] = "Avertissements de Blizzard"
L.blizzardDesc = "Blizzard affiche ses propres messages pour certaines techniques dans certaines rencontres. À notre avis, ces messages sont trop long et trop descriptifs. Nous essayons de produire des messages plus courts et concis qui n'interfèrent pas avec votre manière de jouer et qui ne vous disent pas quoi faire à votre place.\n\n|cffff4411Quand cette case est décochée, les avertissements de Blizzard ne seront pas affichés au milieu de l'écran, mais seront toujours présents dans votre fenêtre de discussion.|r"
L["Flash Screen"] = "Faire clignoter l'écran"
L.flashDesc = "Certaines techniques sont tellement importantes qu'elles nécessitent toute votre attention. Quand ces techniques vous affectent, Big Wigs peut faire clignoter l'écran."
L["Raid icons"] = "Icônes de raid"
L.raidiconDesc = "Certains scripts de rencontre utilisent des icônes pour marquer les joueurs affectés par des techniques précises. Par exemple, les effets de type \"bombe\" et les contrôles mentaux. Si vous décochez ceci, vous ne marquerez personne.\n\n|cffff4411Ne fonctionne que si vous êtes soit le chef du groupe (de raid), soit un de ses assistants !|r"
L["Minimap icon"] = "Icône de la minicarte"
L["Toggle show/hide of the minimap icon."] = "Affiche ou non l'icône de la minicarte."
L["Configure"] = "Configuration"
L["Test"] = "Test"
L["Reset positions"] = "Réinitialiser les positions"
L["Colors"] = "Couleurs"
L["Select encounter"] = "Sélectionnez une rencontre"
L["List abilities in group chat"] = "Lister les techniques dans la discussion de groupe"
L["Block boss movies"] = "Bloquer les cinématiques"
L["After you've seen a boss movie once, Big Wigs will prevent it from playing again."] = "Après avoir visionné une cinématique de boss une première fois, Big Wigs empêchera qu'elle soit jouée à nouveau."
L["Pretend I'm using DBM"] = "Prétendre d'utiliser DBM"
L.pretendDesc = "Si un utilisateur de DBM effectue une vérification des versions pour voir qui utilise DBM, il vous verra sur la liste. Utile pour les guildes qui forcent l'utilisation de DBM."
L["Create custom DBM bars"] = "Créer les barres DBM"
L.dbmBarDesc = "Si un utilisateur envoie un délai de pull ou une barre personnalisée 'pizza', elle sera affichée dans Big Wigs."
L.chatMessages = "Messages de la fenêtre de discussion"
L.chatMessagesDesc = "Affiche tous les messages de BigWigs dans la fenêtre de discussion par défaut, en plus de son affichage normal."
L.autoRole = "Mise à jour auto. du rôle"
L.autoRoleDesc = "Savoir quel rôle vous jouez améliore les alertes Big Wigs des autres joueurs de votre raid. Cette option permet à Big Wigs de mettre à jour automatiquement votre rôle. Par exemple, certains modules vérifient si un joueur est un tank lors de l'analyse des techniques de boss qui n'affectent jamais les tanks.\n\n|cffff4411Ceci n'est pas lié aux alertes spécifiques de rôle et il est fortement recommandé de le laisser activé !|r"
L.zoneMessages = "Afficher les messages de zone"
L.zoneMessagesDesc = "La désactivation de ceci enlevera les messages qui s'affichent quand vous entrez dans une zone pour laquelle Big Wigs a un module de délais que vous n'avez pas installé. Nous vous recommendons de laisser ceci activé, étant donné qu'il s'agit de la seule notification que vous recevrez si nous ajoutons un module que vous n'avez pas pour une nouvelle zone qui vous intéresse."

L.slashDescTitle = "|cFFFED000Commandes :|r"
L.slashDescPull = "|cFFFED000/pull :|r envoie un compte à rebours de pull à votre raid."
L.slashDescRaidBar = "|cFFFED000/raidbar :|r envoie une barre personnalisée à votre raid."
L.slashDescLocalBar = "|cFFFED000/localbar :|r créée une barre personnalisée que seul vous pouvez voir."
L.slashDescRange = "|cFFFED000/range :|r ouvre l'indicateur de portée."
L.slashDescVersion = "|cFFFED000/bwv :|r effectue une vérification des versions de Big Wigs."
L.slashDescConfig = "|cFFFED000/bw :|r ouvre la fenêtre de configuration de Big Wigs."

L.BAR = "Barres"
L.MESSAGE = "Messages"
L.ICON = "Icône"
L.SAY = "Dire"
L.FLASH = "Flash"
L.EMPHASIZE = "Super mise en évidence"
L.ME_ONLY = "Uniquement quand cela m'affecte"
L.ME_ONLY_desc = "Quand vous activez cette option, les messages de cette technique ne seront affichés que si cette dernière vous affecte directement. Par exemple, 'Bombe : Joueur' ne sera affiché que si la bombe est sur vous."
L.PULSE = "Pulse"
L.PULSE_desc = "En plus de faire clignoter l'écran, vous pouvez également avoir une icône relative à cette technique qui s'affiche momentanément au milieu de votre écran pour attirer votre attention."
L.MESSAGE_desc = "La plupart des techniques des rencontres comportent un ou plusieurs messages que Big Wigs affichera sur votre écran. Si vous désactivez cette option, aucun des messages attachés à cette option ne sera affiché."
L.BAR_desc = "Des barres sont affichées pour certaines techniques des rencontres quand cela est approprié. Si cette technique est accompagnée par une barre que vous souhaitez cacher, désactivez cette option."
L.FLASH_desc = "Certaines techniques sont plus importantes que d'autres. Si vous souhaitez que votre écran clignote quand cette technique est imminente ou utilisée, cochez cette option."
L.ICON_desc = "Big Wigs peut marquer les joueurs affectés par des techniques avec une icône. Cela les rend plus faciles à repérer."
L.SAY_desc = "Les bulles de dialogue sont faciles à repérer. Big Wigs fera dire un message à votre personnage pour avertir les joueurs proches qu'un effet vous affecte."
L.EMPHASIZE_desc = "L'activation de ceci mettra très largement en ÉVIDENCE tout message ou barre associé à cette technique. Les messages seront plus grands, les barres clignoteront et auront une couleur différente, et enfin les sons seront utilisés comme compte à rebours quand la technique est imminente. Bref, peu de chance de la louper."
L.PROXIMITY = "Affichage de proximité"
L.PROXIMITY_desc = "Certaines techniques nécessitent que vous vous espaciez. L'affichage de proximité sera paramétré spécifiquement pour cette technique afin que vous puissiez voir d'un coup d'oeil si vous êtes en sécurité."
L.TANK = "Tank uniquement"
L.TANK_desc = "Certaines techniques sont importantes uniquement pour les tanks. Si vous souhaitez voir des alertes pour cette technique quelque soit votre rôle, désactivez cette option"
L.HEALER = "Soigneur uniquement"
L.HEALER_desc = "Certaines techniques sont importantes uniquement pour les soigneurs. Si vous souhaitez voir des alertes pour cette technique quelque soit votre rôle, désactivez cette option"
L.TANK_HEALER = "Tank & soigneur uniquement"
L.TANK_HEALER_desc = "Certaines techniques sont importantes uniquement pour les tanks et les soigneurs. Si vous souhaitez voir des alertes pour cette technique quelque soit votre rôle, désactivez cette option."
L.DISPEL = "Dispeller uniquement"
L.DISPEL_desc = "Certaines techniques sont importantes uniquement pour les dispeller. Si vous souhaitez voir des alertes pour cette technique quelque soit votre rôle, désactivez cette option."
L["Advanced options"] = "Options avancées"
L["<< Back"] = "<< Retour"

L.tank = "|cFFFF0000Alertes pour tank uniquement.|r "
L.healer = "|cFFFF0000Alertes pour soigneur uniquement.|r "
L.tankhealer = "|cFFFF0000Alertes pour tank & soigneur uniquement.|r "
L.dispeller = "|cFFFF0000Alertes pour dispeller uniquement.|r "

L.About = "À propos"
L.Developers = "Développeurs"
L.Maintainers = "Gestionnaires"
L.License = "Licence"
L.Website = "Site web"
L.Contact = "Contact"
L["See license.txt in the main Big Wigs folder."] = "Voir license.txt dans le dossier BigWigs"
L["irc.freenode.net in the #wowace channel"] = "irc.freenode.net sur le canal #wowace"
L["Thanks to the following for all their help in various fields of development"] = "Merci aux personnes suivantes pour leur aide :"

-- Statistics
L.statistics = "Statistiques"
L.norm25 = "25"
L.heroic25 = "25h"
L.norm10 = "10"
L.heroic10 = "10h"
L.lfr = "RdR"
L.flex = "Flex"
L.wipes = "Échecs :"
L.kills = "Victoires :"
L.bestkill = "Record :"

