from django.db import models

# Create your models here.
class Departamento(models.Model):
    id = models.AutoField(primary_key=True, autoincrement=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    codigo = models.CharField(max_length=45, blank=True, null=True)
    
class Municipio(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    departamento = models.ForeignKey(Departamento, models.DO_NOTHING, db_column='departamento_id')

class Contrato(models.Model):
    id = models.AutoField(primary_key=True)
    descripcion = models.CharField(max_length=45, blank=True, null=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'contrato'
    def __str__(self):
            txt='{0}'
            return txt.format(self.nombre)
    
class TDocumento(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    descripcion = models.CharField(max_length=45, blank=True, null=True)
    abreviatura = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'tdocumento'

    def __str__(self):
        return self.nombre  # Devuelve directamente el campo nombre del TDocumento como cadena

    
class TPEmpresario(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    descripcion = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tpempresario'

    def __str__(self):
        return self.nombre  # Devuelve directamente el nombre del TPEmpresario como cadena

class Usuario(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45)
    apellido = models.CharField(max_length=45)
    telefono = models.IntegerField(blank=True, null=True)
    correo = models.CharField(max_length=45, blank=True, null=True)
    contraseña = models.CharField(max_length=45, blank=True, null=True)
    genero = models.CharField(max_length=45, blank=True, null=True)
    fechanacimiento = models.DateField(db_column='fechaNacimiento', blank=True, null=True)
    municipio = models.ForeignKey(Municipio, models.DO_NOTHING, db_column='municipio_id')
    contrato = models.ForeignKey(Contrato, models.DO_NOTHING, db_column='contrato_id')
    tdocumento = models.ForeignKey(TDocumento, models.DO_NOTHING, db_column='tdocumento_id')
    tpempresario = models.ForeignKey(TPEmpresario, models.DO_NOTHING, db_column='tpempresario_id')
    foto = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'usuario'
    def __str__(self):
        txt='{0}'
        return txt.format(self.nombre) 
    
class CategoriaServicio(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45)
    descripcion = models.CharField(max_length=45)
    precio = models.FloatField()

    class Meta:
        managed = False
        db_table = 'categoriaservicio'
    def __str__(self):
            txt='{0}'
            return txt.format(self.nombre)
    
class CategoriaTaller(models.Model):
    id = models.AutoField(primary_key=True)
    descripcion = models.CharField(max_length=45, blank=True, null=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    foto = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'categoriataller'
    def __str__(self):
        txt='{0}'
        return txt.format(self.nombre)
    
class Empresa(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    direccion = models.CharField(max_length=45, blank=True, null=True)
    telefono = models.IntegerField(blank=True, null=True)
    correo = models.CharField(max_length=45, blank=True, null=True)
    razonsocial = models.CharField(max_length=45, blank=True, null=True)
    municipio = models.ForeignKey(Municipio, models.DO_NOTHING, db_column='municipio_id')
    categoriataller = models.ForeignKey(CategoriaTaller, models.DO_NOTHING, db_column='categoriataller_id')
    
    class Meta:
        managed = False
        db_table = 'empresa'

class Servicio(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    categoriaservicio = models.ForeignKey(CategoriaServicio, models.DO_NOTHING, db_column='categoriaservicio_id')
    
    class Meta:
        managed = False
        db_table = 'servicio'
    def __str__(self):
        txt='{0}'
        return txt.format(self.nombre)  
    
class Agendamiento(models.Model):
    id = models.AutoField(primary_key=True)
    hora = models.TimeField(blank=True, null=True)
    nombre = models.CharField(max_length=45, blank=True, null=True)
    usuario = models.ForeignKey(Usuario, models.DO_NOTHING, db_column='usuario_id')
    servicio = models.ForeignKey(Servicio, models.DO_NOTHING, db_column='servicio_id')
    
    class Meta:
        managed = False
        db_table = 'agendamiento'

class FacCabeza(models.Model):
    id = models.AutoField(primary_key=True)
    cliente = models.CharField(max_length=45, blank=True, null=True)
    fecha = models.DateField(blank=True, null=True)
    valor_unitario = models.IntegerField(blank=True, null=True)
    valortotal = models.IntegerField(blank=True, null=True)
    pagos_tarjetacredito = models.IntegerField(blank=True, null=True)
    usuario = models.ForeignKey(Usuario, models.DO_NOTHING, db_column='usuario_id')
    
    class Meta:
        managed = False
        db_table = 'faccabeza'
    def __str__(self):
        txt='{0}'
        return txt.format(self.nombre) 
    
class CuerpoFacrura(models.Model):
    id = models.AutoField(primary_key=True)
    cantidad = models.CharField(max_length=45, blank=True, null=True)
    valorunitariol = models.IntegerField(blank=True, null=True)
    valortotal = models.IntegerField(blank=True, null=True)
    scripcion_idscripcion = models.IntegerField(blank=True, null=True)
    faccabeza = models.ForeignKey(FacCabeza, models.DO_NOTHING, db_column='faccabeza_id')

    class Meta:
        managed = False
        db_table = 'cuerpofacrura'

class Pagos(models.Model):
    id = models.AutoField(primary_key=True)
    precio = models.FloatField(blank=True, null=True)
    monto = models.FloatField(blank=True, null=True)
    agendamiento = models.ForeignKey(Agendamiento, models.DO_NOTHING, db_column='agendamiento_id')

    def __str__(self):
        txt='{0}'
        return txt.format(self.nombre) 