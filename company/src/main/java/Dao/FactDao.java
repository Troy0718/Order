package Dao;

public class FactDao {
	private memberDao md;
	private porderDao pd;
	private querymember qm;
	private queryporder qp;
	private messageDao ms;
	public messageDao getMs() {
		return ms;
	}
	public void setMs(messageDao ms) {
		this.ms = ms;
	}
	public memberDao getMd() {
		return md;
	}
	public void setMd(memberDao md) {
		this.md = md;
	}
	public porderDao getPd() {
		return pd;
	}
	public void setPd(porderDao pd) {
		this.pd = pd;
	}
	public querymember getQm() {
		return qm;
	}
	public void setQm(querymember qm) {
		this.qm = qm;
	}
	public queryporder getQp() {
		return qp;
	}
	public void setQp(queryporder qp) {
		this.qp = qp;
	}
}
