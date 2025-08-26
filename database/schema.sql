CREATE TABLE project (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    targetAudience VARCHAR(50),
    logoPrompt TEXT,
    colorScheme VARCHAR(50)
);

CREATE TABLE feature (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    projectId INT,
    FOREIGN KEY (projectId) REFERENCES project(id)
);

CREATE TABLE techStack (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    projectId INT,
    FOREIGN KEY (projectId) REFERENCES project(id)
);

INSERT INTO project (id, name, description, category, targetAudience, logoPrompt, colorScheme)
VALUES (1, 'DebugTest1756213976758', 
        'Application de test pour déboguer les erreurs liées à GitHub et Vercel', 
        'Utilitaire', 'Développeurs', 
        'Un logo simple avec des éléments de débogage et d''erreur', 
        '#0077b6,#e74c3c');

INSERT INTO feature (id, name, projectId)
VALUES (1, 'Tests de débogage', 1),
       (2, 'Gestion des erreurs', 1),
       (3, 'Intégration continue', 1);

INSERT INTO techStack (id, name, projectId)
VALUES (1, 'React', 1),
       (2, 'Node.js', 1),
       (3, 'Express', 1);