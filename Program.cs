using lab.ebs.Aplicacao.Servicos;
using lab.ebs.Dominio.Entidades;
using lab.ebs.Dominio.Interfaces;
using lab.ebs.Infra.Contexto;
using lab.ebs.Infra.Repositorios.Implementacoes;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<AppDbContext>(options =>
   options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

builder.Services.AddScoped<IMedicoRepositorio, MedicoRepositorio>();
builder.Services.AddScoped<MedicoService>();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();
//app.MapGet("/medicos", async (MedicoService service) => await service.ListarAsync());

//app.MapGet("/medicos/{id}", async (int id, MedicoService service) =>
//{
//    var medico = await service.BuscarMedicoAsync(id); // Aguarda a Task
//    return medico is not null ? Results.Ok(medico) : Results.NotFound();
//});

//app.MapGet("/medicos/{id}", async (int id, MedicoService service) =>
//{
//    var medico = await service.ObterPorIdAsync(id); // Aguarda a Task
//    return medico is not null ? Results.Ok(medico) : Results.NotFound();
//});

//app.MapPost("/medicos", async (Medico medico, MedicoService service) =>
//{
//    await service.AdicionarAsync(medico);
//    return Results.Created($"/medicos/{medico.Id}", medico);
//});

//app.MapPut("/medicos/{id}", async (int id, Medico medico, MedicoService service) =>
//{
//    if (id != medico.Id) return Results.BadRequest();
//    await service.AtualizarAsync(medico);
//    return Results.NoContent();
//});

//app.MapDelete("/medicos/{id}", async (int id, MedicoService service) =>
//{
//    await service.RemoverAsync(id);
//    return Results.NoContent();
//});

app.Run();
