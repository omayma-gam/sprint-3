<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Employee</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #ebf4ff;
            min-height: 100vh;
            padding: 40px 0;
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .card-header {
            background: linear-gradient(45deg, #3B82F6, #2563EB);
            padding: 30px;
            border: none;
        }
        .card-header h1 {
            color: white;
            font-size: 24px;
            margin: 0;
            text-align: center;
        }
        .card-body {
            padding: 40px;
            background: white;
        }
        .form-group {
            margin-bottom: 25px;
            position: relative;
        }
        .form-control {
            border: 2px solid #e2e8f0;
            border-radius: 10px;
            padding: 12px 20px 12px 45px;
            font-size: 14px;
            height: auto;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            border-color: #3B82F6;
            box-shadow: 0 0 0 0.2rem rgba(59, 130, 246, 0.1);
        }
        .form-icon {
            position: absolute;
            left: 15px;
            top: 40px;
            color: #64748b;
        }
        label {
            font-weight: 500;
            color: #1e293b;
            margin-bottom: 8px;
            display: block;
        }
        .btn-update {
            background: linear-gradient(45deg, #3B82F6, #2563EB);
            border: none;
            border-radius: 10px;
            padding: 12px 30px;
            color: white;
            font-weight: 500;
            letter-spacing: 0.5px;
            width: 100%;
            margin-top: 15px;
            transition: all 0.3s ease;
        }
        .btn-update:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(37, 99, 235, 0.3);
        }
        .progress-bar {
            height: 5px;
            background: linear-gradient(90deg, #3B82F6 0%, #2563EB 100%);
            width: 0;
            position: absolute;
            top: 0;
            left: 0;
            transition: width 0.3s ease;
        }
        .form-control:focus ~ .progress-bar {
            width: 100%;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h1><i class="fas fa-user-edit me-2"></i> Mise à jour Employé</h1>
                </div>
                <div class="card-body">
                    <form action="update" method="post">
                        <input type="hidden" name="id" value="${person.id}">

                        <div class="form-group">
                            <label for="nom">Nom</label>
                            <i class="fas fa-user form-icon"></i>
                            <input type="text" class="form-control" id="nom" name="nom" value="${person.nom}">
                            <div class="progress-bar"></div>
                        </div>

                        <div class="form-group">
                            <label for="prenom">Prénom</label>
                            <i class="fas fa-user form-icon"></i>
                            <input type="text" class="form-control" id="prenom" name="prenom" value="${person.prenom}">
                            <div class="progress-bar"></div>
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <i class="fas fa-envelope form-icon"></i>
                            <input type="email" class="form-control" id="email" name="email" value="${person.email}">
                            <div class="progress-bar"></div>
                        </div>

                        <div class="form-group">
                            <label for="poste">Poste</label>
                            <i class="fas fa-briefcase form-icon"></i>
                            <input type="text" class="form-control" id="poste" name="poste" value="${person.poste}">
                            <div class="progress-bar"></div>
                        </div>

                        <div class="form-group">
                            <label for="salaire">Salaire</label>
                            <i class="fas fa-euro-sign form-icon"></i>
                            <input type="number" class="form-control" id="salaire" name="salaire" value="${person.salaire}">
                            <div class="progress-bar"></div>
                        </div>

                        <button type="submit" class="btn btn-update">
                            <i class="fas fa-save me-2"></i>Mettre à jour
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>