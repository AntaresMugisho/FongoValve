//import './bootstrap';
let personne = {
    nom : 'Vainquaire',
    post_nom : 'Wa kahasha',
    age : 24,
    etat_civil : 'marié',
    niveau_etude : 'licencié',
    naissance : '02 nov 1999'
};
for (const key in personne) {
   console.log(`${key} : ${personne[key]}`);
}
