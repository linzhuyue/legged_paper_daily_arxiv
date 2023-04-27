let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["Legged Robot", "Bipedal Robot", "Optimization","Trajectory","GPT","Optimal"];
let titles_method = ["Reinforcement Learning","Self-Supervised","control","locomotion","navigation","mpc","differential","whole body control"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Koushil Sreenath", "Sergey Levine", "Lerrel Pinto","Yong Liu","MATTHEW CHIGNOLI","Farbod Farshidian",
                    "Wei Yang","Donghyun Kim","Qiuguo Zhu","Marco Hutter","Jemin Hwangbo","Sangbae Kim","Xiaolong Wang","Wei Zhang","PATRICK M. WENSING"];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
     // Robotics
    "IROS","ICRA","IEEE Conference on Decision and Control","CoRL","Journal of Field Robotics","The International Journal of Robotics Research","IEEE Robotics and Automation Letters","Science Robotics","IEEE Transactions on Robotics and Automation","TRO","RAL","IEEE/ASME Transactions on Mechatronics",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
