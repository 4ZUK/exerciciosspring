package br.com.rd.exerciciospring;

import javax.persistence.*;
@Entity
@Table(name="tb_cupobim")
public class TbCupom {

  @Id
  @Column(name="id")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  Integer id;

  @Column(name="id_cupom_item" )
  Integer idCupomItem;

  @Column(name="id_cupom" , nullable=false)
  Integer idCupom;

  @Column(name="id_produto" )
  Integer idProduto;

  @Column(name="qt_produto" )
  Integer qtProduto;

  @Column(name="vl_produto" )
  Double vlProduto;


  public void setId(Integer id){
    this.id=id;
  }

  public Integer getId(){
   return this.id;
  }

  public void setIdCupomItem(Integer idCupomItem){
    this.idCupomItem=idCupomItem;
  }

  public Integer getIdCupomItem(){
   return this.idCupomItem;
  }

  public void setIdCupom(Integer idCupom){
    this.idCupom=idCupom;
  }

  public Integer getIdCupom(){
   return this.idCupom;
  }

  public void setIdProduto(Integer idProduto){
    this.idProduto=idProduto;
  }

  public Integer getIdProduto(){
   return this.idProduto;
  }

  public void setQtProduto(Integer qtProduto){
    this.qtProduto=qtProduto;
  }

  public Integer getQtProduto(){
   return this.qtProduto;
  }

  public void setVlProduto(Double vlProduto){
    this.vlProduto=vlProduto;
  }

  public Double getVlProduto(){
   return this.vlProduto;
  }
  @Override
  public String toString(){
    StringBuffer buf=new StringBuffer();
    buf.append(this.idCupomItem).append(" ");
    return buf.toString();
  }

  @Override
  public boolean equals(Object obj) {
    if (obj == null) {
	  return false;
    }
    return this.getId() == ((TbCupom) obj).getId();
  }

}
