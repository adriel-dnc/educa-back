-- DropForeignKey
ALTER TABLE "Aula" DROP CONSTRAINT "Aula_CursoID_fkey";

-- AlterTable
ALTER TABLE "Aula" ALTER COLUMN "CursoID" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Aula" ADD CONSTRAINT "Aula_CursoID_fkey" FOREIGN KEY ("CursoID") REFERENCES "Curso"("ID") ON DELETE SET NULL ON UPDATE CASCADE;
